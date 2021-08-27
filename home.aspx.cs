using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


public partial class home : System.Web.UI.Page
{ dbcon objConn = new dbcon();
    private object tblC;
    private object tblb;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {


                string games = "select game,game from gamename";

                objConn.FillDDL(games, ddGame);

                ddGame.Items.Insert(0, "Select");
                ddTourn.Items.Insert(0, "Select");






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
    public DataSet Point()
    {
        string SltSegment = "SELECT * FROM pointtbl where game='" + ddGame.SelectedItem.Text + "' and" +
                            " tournament='" + ddTourn.SelectedItem.Text + "' order by point desc";
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
    public DataSet match_date()
    {
        string SltSegment = "SELECT date_format(matchdate, '%d-%m-%Y') as matchdate,team1,team2,'Vs' as vs FROM sport where game='" + ddGame.SelectedItem.Text + "'and" +
                            " Tourn='" + ddTourn.SelectedItem.Text + "'and " + " date_format(matchdate,'%d-%m-%Y')>=date_format(current_date,'%d-%m-%Y') order by date_format(matchdate,'%d-%m-%Y') ";
        objConn.RetriveDS(SltSegment);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {
            gvMDate.DataSource = objConn.dsCommon;
            gvMDate.DataBind();
        }

        else
        {
            gvMDate.DataSource = null;
            gvMDate.DataBind();
        }
        return objConn.dsCommon;


    }
    public DataSet MResult()
    {
        string SltSegment = "select matchdate,team1,team2 from sport where matchdate in(select max(matchdate) from sport where date_format(matchdate,'%d-%m-%Y')<=date_format(current_date,'%d-%m-%Y')) and " + " game='" + ddGame.SelectedItem.Text + "'and" +
                               " Tourn='" + ddTourn.SelectedItem.Text + "'";
        objConn.RetriveDS(SltSegment);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {
            LblDate.Text = objConn.dsCommon.Tables[0].Rows[0]["matchdate"].ToString();
            string SltSegment1 = "select sum(run)  as run,count(*)  as wicket,teamname from playerstate where game='" + ddGame.SelectedItem.Text + "'and" +
                               " tournament='" + ddTourn.SelectedItem.Text + "' and " + "status in('O','P') group by teamname order by run desc";

            objConn.RetriveDSQuery1(SltSegment1);
            if (objConn.dsQuery1.Tables[0].Rows.Count != 0)
            {

                lblWinScr.Text = objConn.dsQuery1.Tables[0].Rows[0]["run"].ToString();
                lblLossScr.Text = objConn.dsQuery1.Tables[0].Rows[1]["run"].ToString();
                lblLossTName.Text = objConn.dsQuery1.Tables[0].Rows[1]["teamname"].ToString();
                lblWinTName.Text = objConn.dsQuery1.Tables[0].Rows[0]["teamname"].ToString();
                LblLossWikt.Text = objConn.dsQuery1.Tables[0].Rows[1]["wicket"].ToString();
                LblWinWikt.Text = objConn.dsQuery1.Tables[0].Rows[0]["wicket"].ToString();
            }
            else { }
            return objConn.dsQuery1;
        }

        else
        {

        }
        return objConn.dsCommon;


    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        
        Point();
        match_date();
        MResult();

        //string majorhead = "select team1,team2,matchdate from sport where matchdate in(select max(matchdate) from sport where to_char(matchdate,'yyyyMMdd')<=to_char(current_date,'yyyyMMdd')) ";
        //    objConn.RetriveDS(majorhead);

        //   if (objConn.dsCommon.Tables[0].Rows.Count > 0)
        //    {
        //        Label1.Text = objConn.dsCommon.Tables[0].Rows[0]["team1"].ToString();
        //       Label2.Text = objConn.dsCommon.Tables[0].Rows[0]["team2"].ToString();

        //   }
    }
    protected void btnMR_Click(object sender, EventArgs e)
    {
        string team2 = lblWinTName.Text.Trim();
        string team1 = lblLossTName.Text.Trim();
        Session["team1"] = team1;
        Session["team2"] = team2;
        Response.Redirect("score.aspx");
    }
    protected void ddGame_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        string Tourn = "select tournamentname,tournamentname from tournamentname where game='" + ddGame.SelectedItem.Text + "'";
        objConn.FillDDL(Tourn, ddTourn);
        ddTourn.Items.Insert(0, "Select");
       
      
    }
}