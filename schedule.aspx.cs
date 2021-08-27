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


    public DataSet bindgv()
    {
        string SltSegment = "SELECT team1,team2,to_char(matchdate,'dd/MM/yyyy') as matchdate,'VS' as VS FROM sport where game='" + ddGame.SelectedItem.Text + "'and" +
                            " Tourn='" + ddTourn.SelectedItem.Text + "' and" + "  to_char(matchdate,'yyyyMMdd')>=to_char(current_date,'yyyyMMdd') order by matchdate";
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

    protected void btnView_Click(object sender, EventArgs e)
    {
        bindgv();
      
    }
    public void clearControl()
    {
        ddGame.SelectedIndex = 0;
        ddTourn.SelectedIndex = 0;

    }
    protected void LnkCheckScore_Click(object sender, EventArgs e)
    {
            GridViewRow row = (GridViewRow)((LinkButton)sender).NamingContainer;  //{For access text box of Grid view from here
            
Session["team1"] = gv.Rows[row.RowIndex].Cells[1].Text;
Session["team2"] = gv.Rows[row.RowIndex].Cells[3].Text;
Response.Redirect("score.aspx");
    }
    protected void ddGame_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        //string Team1 = "SELECT tournamentname FROM tournamentname where game='" + ddGame.SelectedItem.Text + "'";
        //objConn.RetriveDS(Team1);
        //if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        //{

           
            string Tourn = "select tournamentname,tournamentname from tournamentname where game='" + ddGame.SelectedItem.Text + "'";

            objConn.FillDDL(Tourn, ddTourn);
            
            ddTourn.Items.Insert(0, "Select");
        //}
        //else
        //{
        //    ddTourn.ClearSelection();

        //    ddTourn.Items.Insert(0, "Select");
        //}
       
      
    }
}
