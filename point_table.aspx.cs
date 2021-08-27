using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class point_table : System.Web.UI.Page
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
    protected void btnView_Click(object sender, EventArgs e)
    {
        string Team = "SELECT teamname,teamname FROM teams where game='" + ddGame.SelectedItem.Text + "'and" +
                            " Tournament='" + ddTourn.SelectedItem.Text + "'";

        objConn.FillDDL(Team, ddTmNm);

        ddTmNm.Items.Insert(0, "Select");

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtLoss.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter number of match Loss');</script>", false);
            }
            else if (txtPlay.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter number of Match Played');</script>", false);
            }
            else if (txtPt.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter number of point Played');</script>", false);
            }
            else if (txtRR.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter Run rate');</script>", false);
            }
            else if (txtWin.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter number of Match Win');</script>", false);
            }
            else
            {
                string SltSegment = "SELECT * FROM pointtbl where game='" + ddGame.SelectedItem.Text + "' and" +
                               " tournament='" + ddTourn.SelectedItem.Text + "' and " + "teamname='" + ddTmNm.SelectedItem.Text + "'"; ;
                objConn.RetriveDS(SltSegment);
                if (objConn.dsCommon.Tables[0].Rows.Count != 0)
                {
                    objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
                    if (objConn.conPGeKosh.State == ConnectionState.Closed)
                    {
                        objConn.conPGeKosh.Open();
                        //return;
                    }
                    string upd = "UPDATE pointtbl SET played='" + txtPlay.Text + "',win='" + txtWin.Text + "',loss='" + txtLoss.Text + "',runr='" + txtRR.Text + "',point='" + txtPt.Text + "' where game='" + ddGame.SelectedItem.Text + "' and" +
                               " tournament='" + ddTourn.SelectedItem.Text + "' and " + "teamname='" + ddTmNm.SelectedItem.Text + "'";
                    objConn.cmdPG = new MySqlCommand(upd, objConn.conPGeKosh);
                    objConn.cmdPG.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('update successfull...');</script>", false);
                }

                else
                {
                    objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
                    if (objConn.conPGeKosh.State == ConnectionState.Closed)
                    {
                        objConn.conPGeKosh.Open();
                        //return;
                    }
                    string SqlInsertbtr = "Insert into pointtbl(teamname,played,win,loss,runr,point,game,tournament) values(@teamname,@played,@win,@loss,@runr,@point,@game,@tournament)";
                    objConn.cmdPG = new MySqlCommand(SqlInsertbtr, objConn.conPGeKosh);
                    //objConn.cmdPG.Transaction = objConn.TransPG;

                    objConn.cmdPG.Parameters.AddWithValue("@teamname", ddTmNm.SelectedItem.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("played", txtPlay.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("win", txtWin.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("loss", txtLoss.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("runr", txtRR.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("point", txtPt.Text.Trim());
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
    public void clearControl()
    {
        txtWin.Text = "";
        txtRR.Text = "";
        txtPt.Text = "";
        txtPlay.Text = "";
        txtLoss.Text = "";


    }
    protected void ddTmNm_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Team = "SELECT * FROM pointtbl where teamname='" + ddTmNm.SelectedItem.Text + "'";
        objConn.RetriveDS(Team);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {

            txtPlay.Text = objConn.dsCommon.Tables[0].Rows[0]["played"].ToString();
            txtWin.Text = objConn.dsCommon.Tables[0].Rows[0]["win"].ToString();
            txtLoss.Text = objConn.dsCommon.Tables[0].Rows[0]["loss"].ToString();
            txtRR.Text = objConn.dsCommon.Tables[0].Rows[0]["runr"].ToString();
            txtPt.Text = objConn.dsCommon.Tables[0].Rows[0]["point"].ToString();

        }
        else {
            clearControl();

        }
    }
    protected void ddGame_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Tourn = "select tournamentname,tournamentname from tournamentname where game='" + ddGame.SelectedItem.Text + "'";

        objConn.FillDDL(Tourn, ddTourn);
        ddTourn.Items.Insert(0, "Select");
    }
}