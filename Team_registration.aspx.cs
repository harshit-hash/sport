using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class Team_registration : System.Web.UI.Page
{dbcon objConn = new dbcon();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
               
                string Game = "select game,game as colname from gamename";

                objConn.FillDDL(Game , ddGame);
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtTeamName.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter Team- Name');</script>", false);
            }
            else if (txtShortName.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter Short Name);</script>", false);
            }
                else if (ddGame.Text.Trim() =="")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Select Sport Name);</script>", false);
            }
                 else if (ddTourn.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Select Tournament Name);</script>", false);
            }
            else
            {
                objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
                if (objConn.conPGeKosh.State == ConnectionState.Closed)
                {
                    objConn.conPGeKosh.Open();
                    //return;
                }



                string SqlInsertbtr = "Insert into teams(TeamName,ShortName,game,tournament) values(@TeamName,@ShortName,@game,@tournament)";
                objConn.cmdPG = new MySqlCommand(SqlInsertbtr, objConn.conPGeKosh);
                //objConn.cmdPG.Transaction = objConn.TransPG;

                objConn.cmdPG.Parameters.AddWithValue("TeamName", txtTeamName .Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("ShortName", txtShortName .Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("game", ddGame.SelectedItem.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("tournament", ddTourn.SelectedItem.Text.Trim());

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
            objConn.conPGeKosh.Dispose();

        }
    }
    public void clearControl()
    {
        txtShortName .Text = "";
        txtTeamName .Text = "";
        ddGame.SelectedIndex = 0;
        ddTourn.SelectedIndex = 0;
    }

    protected void ddGame_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Tourn = "select tournamentname,tournamentname from tournamentname where game='" + ddGame.SelectedItem.Text + "'";

        objConn.FillDDL(Tourn, ddTourn);
        ddTourn.Items.Insert(0, "Select");
    }
}