using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    dbcon objConn = new dbcon();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {


                string games = "select game,game from gamename";

                objConn.FillDDL(games, ddGame);

                ddGame.Items.Insert(0, "Select");




            }

        }
        catch (Exception Err)
        {
            string ErrMsg = Err.Message.ToString().Replace("'", "");
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('" + ErrMsg + "');</script>", false);

        }
        finally
        {
            //objConn.Close();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        bindgv();
        try
        {
            if (txtName1.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter player Name');</script>", false);
            }

            else
            {
               
                string SltSegment = "SELECT * FROM cricket where game='" + ddGame.SelectedItem.Text + "' and" +
                            " team='" + ddTeams.SelectedItem.Text + "'and" +
                            " jerssyno='" + txtNo1.Text.Trim() + "'"; ;

                objConn.RetriveDS(SltSegment);

                if (objConn.dsCommon.Tables[0].Rows.Count != 0)
                {

                    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please enter different jno.');</script>", false);
                }





                else
                {
                    objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
                    if (objConn.conPGeKosh.State == ConnectionState.Closed)
                    {
                        objConn.conPGeKosh.Open();
                        //return;
                    }
                    string SqlInsertbtr = "Insert into cricket(team,game,pname,jerssyno) values(@team,@game,@pname,@jerssyno)";
                    objConn.cmdPG = new MySqlCommand(SqlInsertbtr, objConn.conPGeKosh);
                    //objConn.cmdPG.Transaction = objConn.TransPG;

                    objConn.cmdPG.Parameters.AddWithValue("team", ddTeams.SelectedItem.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("game", ddGame.SelectedItem.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("pname", txtName1.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("jerssyno", txtNo1.Text.Trim());

                    objConn.cmdPG.ExecuteNonQuery();

                    string Pstate = "Insert into playerstate(pname,teamname,game,tournament) values(@pname,@teamname,@game,@tournament)";
                    objConn.cmdPG = new MySqlCommand(Pstate, objConn.conPGeKosh);
                    //objConn.cmdPG.Transaction = objConn.TransPG;

                    objConn.cmdPG.Parameters.AddWithValue("teamname", ddTeams.SelectedItem.Text.Trim());

                    objConn.cmdPG.Parameters.AddWithValue("pname", txtName1.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("game", ddGame.SelectedItem.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("tournament", ddTourn.SelectedItem.Text.Trim());

                    objConn.cmdPG.ExecuteNonQuery();

                    string Pstate2 = "Insert into pballstate(pname,teamname,game,tournament) values(@pname,@teamname,@game,@tournament)";
                    objConn.cmdPG = new MySqlCommand(Pstate2, objConn.conPGeKosh);
                    //objConn.cmdPG.Transaction = objConn.TransPG;

                    objConn.cmdPG.Parameters.AddWithValue("teamname", ddTeams.SelectedItem.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("pname", txtName1.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("game", ddGame.SelectedItem.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("tournament", ddTourn.SelectedItem.Text.Trim());



                    objConn.cmdPG.ExecuteNonQuery();



                    //string SqlInsertbtr = "Insert into cricket(team,game,pname,jerssyno) values(@team,@game,@pname,@jerssyno)";
                    //objConn.cmdPG = new MySqlCommand(SqlInsertbtr, objConn.conPGeKosh);
                    ////objConn.cmdPG.Transaction = objConn.TransPG;

                    //objConn.cmdPG.Parameters.AddWithValue("team", ddTeams.SelectedItem.Text.Trim());
                    //objConn.cmdPG.Parameters.AddWithValue("game", ddGames.SelectedItem.Text.Trim());
                    //objConn.cmdPG.Parameters.AddWithValue("pname", txtName1.Text.Trim());
                    //objConn.cmdPG.Parameters.AddWithValue("jerssyno", txtNo1.Text.Trim());

                    //objConn.cmdPG.ExecuteNonQuery();

                    clearControl();
                    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('successfull register...');</script>", false);
                    bindgv();

                }
            }
        }
        catch (Exception Err)
        {
            string ErrMsg = Err.Message.ToString().Replace("'", "");
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('" + ErrMsg + "');</script>", false);
        }

        finally
        {
            objConn.conPGeKosh.Dispose();

        }
    }


    public DataSet bindgv()
    {
        string SltSegment = "SELECT * FROM cricket where game='" + ddGame.SelectedItem.Text + "' and" +
                            " team='" + ddTeams.SelectedItem.Text + "'"; ;
        objConn.RetriveDS(SltSegment);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {
            gv.DataSource = objConn.dsCommon;
            gv.DataBind();
        }

        else
        {
            gv.DataSource = null;
            gv.DataBind();
        }
        return objConn.dsCommon;


    }
    public void clearControl()
    {
        txtName1.Text = "";
        txtNo1.Text = "";

    }
    protected void ddGame_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Tourn = "select tournamentname,tournamentname from tournamentname where game='" + ddGame.SelectedItem.Text + "'";

        objConn.FillDDL(Tourn, ddTourn);
        ddTourn.Items.Insert(0, "Select");

       
        string Team1 = "SELECT teamname FROM teams where game='" + ddGame.SelectedItem.Text + "'";
        objConn.RetriveDS(Team1);
        //if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        //{

        //    ddTeams.SelectedValue = objConn.dsCommon.Tables[0].Rows[0]["teamname"].ToString();
           

        //}
        //else
        //{
        //    ddTeams.ClearSelection();


        //}
    }
    protected void ddTeams_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindgv();
    }
    //protected void gv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{

    //    GridViewRow row = (GridViewRow)gv.Rows[e.RowIndex];
    //    string Bowler1 = "DELETE FROM cricket where team='" + ddTeams.SelectedItem.Text + "'  and " + "pname='" + row.Cells[0].Text + "'  and " + "team='" + row.Cells[1].Text + "'  and " + "jerssyno='" + row.Cells[2].Text + "'";
    //    objConn.Delete(Bowler1);
    //    //objConn.cmdPG = new MySqlCommand(Bowler1, objConn.conPGeKosh);
    //    // objConn.cmdPG.ExecuteNonQuery();

    //    bindgv();
    //    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Successfully Deleted..');</script>", false);

    //}
    protected void ddTourn_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Team = "select teamname,teamname from teams where game='" + ddGame.SelectedItem.Text + "' and "+"tournament='"+ ddTourn.SelectedItem.Text +"' ";

        objConn.FillDDL(Team, ddTeams);

        ddTeams.Items.Insert(0, "Select");
    }
}