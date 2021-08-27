using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


using System.Data.SqlClient;
using System.Data;

public partial class Cricket : System.Web.UI.Page
{
    dbcon objConn = new dbcon();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                string Vgames = "select game,game from gamename";

                objConn.FillDDL(Vgames, ddVGame);

                ddVGame.Items.Insert(0, "Select");
               

              


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


    public DataSet bindgvteamlist()
    {
        string SltSegment = "SELECT * FROM teams where game='" + ddVGame.SelectedItem.Text + "' and " + "tournament='" + ddTourn.SelectedItem.Text + "'";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        bindgvteamlist();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtTeam1.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter Team- Name');</script>", false);
            }
            else if (txtTeam2.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter Team-2 Name');</script>", false);
            }
            else
            {
                            
                objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
                if (objConn.conPGeKosh.State == ConnectionState.Closed)
                {
                    objConn.conPGeKosh.Open();
                    //return;
                }

                string SqlInsertbtr = "Insert into sport(team1,team2,game,tourn,matchdate) values(@team1,@team2,@game,@tourn,@matchdate)";
                objConn.cmdPG = new MySqlCommand(SqlInsertbtr, objConn.conPGeKosh);
                //objConn.cmdPG.Transaction = objConn.TransPG;

                objConn.cmdPG.Parameters.AddWithValue("team1", txtTeam1.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("team2", txtTeam2.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("game", ddVGame.SelectedItem.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("tourn", ddTourn.SelectedItem.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("matchdate",DateTime.ParseExact( txtDate.Text.Trim(),"dd/MM/yyyy",null));

                objConn.cmdPG.ExecuteNonQuery();

                clearControl();
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('successfull register...');</script>", false);




            }
        }
        catch (Exception Err)
        {
            string ErrMsg = Err.Message.ToString().Replace("'", "");
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('" + ErrMsg + "');</script>", false);
        }

        finally
        {
          //  objConn.conPGeKosh.Dispose();

        }
    }
    public void clearControl()
    {
        txtTeam1.Text = "";
        txtTeam2.Text = "";


    }
   
    protected void txtTeam1_TextChanged(object sender, EventArgs e)
    {
        objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
        if (objConn.conPGeKosh.State == ConnectionState.Closed)
        {
            objConn.conPGeKosh.Open();
            //return;
        }

        objConn.TransPG = objConn.conPGeKosh.BeginTransaction(IsolationLevel.ReadCommitted);


        string Batsman1 = "SELECT teamname FROM teams where game='" + ddVGame.SelectedItem.Text + "' and " + "teamname='" + txtTeam1.Text + "'and " + "tournament='" + ddTourn.SelectedItem.Text + "'";
        //objConn.RetriveDS(Batsman1);
        objConn.dsCommon = new DataSet();
        objConn.cmdPG = new MySqlCommand(Batsman1, objConn.conPGeKosh);
        objConn.cmdPG.Transaction = objConn.TransPG;
        objConn.daPG = new MySqlDataAdapter(objConn.cmdPG);
        objConn.daPG.Fill(objConn.dsCommon);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {
            
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Team_Name not Found...');</script>", false);
        }
    }
    protected void txtTeam2_TextChanged(object sender, EventArgs e)
    {
        objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
        if (objConn.conPGeKosh.State == ConnectionState.Closed)
        {
            objConn.conPGeKosh.Open();
            //return;
        }

        objConn.TransPG = objConn.conPGeKosh.BeginTransaction(IsolationLevel.ReadCommitted);


        string Batsman1 = "SELECT teamname FROM teams where game='" + ddVGame.SelectedItem.Text + "' and " + "teamname='" + txtTeam2.Text + "'and " + "tournament='" + ddTourn.SelectedItem.Text + "'";
        //objConn.RetriveDS(Batsman1);
        objConn.dsCommon = new DataSet();
        objConn.cmdPG = new MySqlCommand(Batsman1, objConn.conPGeKosh);
        objConn.cmdPG.Transaction = objConn.TransPG;
        objConn.daPG = new MySqlDataAdapter(objConn.cmdPG);
        objConn.daPG.Fill(objConn.dsCommon);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Team_Name not Found...');</script>", false);
        }
    }
    protected void ddVGame_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Tourn = "select tournamentname,tournamentname from tournamentname where game='" + ddVGame.SelectedItem.Text + "'";

        objConn.FillDDL(Tourn, ddTourn);
        ddTourn.Items.Insert(0, "Select");
    }
}


