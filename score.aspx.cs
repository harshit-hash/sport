using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class score : System.Web.UI.Page
{ dbcon objConn = new dbcon();
    protected void Page_Load(object sender, EventArgs e)
{

    try
    {
        //string MDate = "select matchdate,team1,team2 from sport where to_char(matchdate,'yyyyMMdd')=to_char(current_date,'yyyyMMdd')";
        //objConn.RetriveDS(MDate);

        //if (objConn.dsCommon.Tables[0].Rows.Count > 0)
        //{
        //    string Run1 = "select totalrun,totalwicket from playerstate";
        //    objConn.RetriveDS(Run1);

        //    if (objConn.dsCommon.Tables[0].Rows.Count > 0)
        //    {
        //        lbl1stiniRun.Text = objConn.dsCommon.Tables[0].Rows[0]["totalrun"].ToString();
        //        lbl1stiniWkt.Text = objConn.dsCommon.Tables[0].Rows[0]["totalwicket"].ToString();

        //    }
        //    else
        //    {
        //        lbl1stiniRun.Text = "0";
        //        lbl1stiniWkt.Text = "0";
        //    }
        //}
        
            

           
                lblTeam1.Text = Session["team1"].ToString();
                lblTeam2.Text = Session["team2"].ToString();


                string Run1 = "select sum(run) as run,count(*) filter(where status='O') as wicket from playerstate where teamname='" + lblTeam1.Text + "'";
                objConn.RetriveDS(Run1);

                if (objConn.dsCommon.Tables[0].Rows.Count > 0)
                {
                    lbl1stiniRun.Text = objConn.dsCommon.Tables[0].Rows[0]["run"].ToString();
                    lbl1stiniWkt.Text = objConn.dsCommon.Tables[0].Rows[0]["wicket"].ToString();

                }
                else
                {
                    lbl1stiniRun.Text = "0";
                    lbl1stiniWkt.Text = "0";
                }
                string Run2 = "select sum(run) as run,count(*) filter(where status='O') as wicket from playerstate where teamname='" + lblTeam2.Text + "'";
                objConn.RetriveDS(Run2);

                if (objConn.dsCommon.Tables[0].Rows.Count > 0)
                {
                    lbl2ndiniRun.Text = objConn.dsCommon.Tables[0].Rows[0]["run"].ToString();
                    lbl2ndiniWkt.Text = objConn.dsCommon.Tables[0].Rows[0]["wicket"].ToString();
               
                }
                else
                {
                  lbl2ndiniRun.Text = "0";
                   lbl2ndiniWkt.Text = "0";
                }
                string Over = "select sum(over) as over  from pballstate where playstatus='R'";
                objConn.RetriveDS(Over);

                if (objConn.dsCommon.Tables[0].Rows.Count > 0)
                {
                    lblover.Text = objConn.dsCommon.Tables[0].Rows[0]["over"].ToString();
                  

                }
                else
                {
                    lbl2ndiniRun.Text = "0";
                    lbl2ndiniWkt.Text = "0";
                }


                Batsman();
                Bowler();
       

        //ScriptManager.GetCurrent(this).SetFocus(ddlSubMajorHead);
    }
    catch (Exception Err)
    {
        string ErrMsg = Err.Message.ToString().Replace("'", "");

        ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('" + ErrMsg + "');</script>", false);
    }
    finally
    {
        if (objConn.cmdPG != null)
        {
            objConn.cmdPG.Dispose();
        }
        if (objConn.conPGeKosh != null)
        {
            objConn.conPGeKosh.Dispose();
        }
    }
        
    }
    public DataSet Batsman()
    {
        string SltSegment = "SELECT * FROM playerstate where status<>'N' and " + "playstatus='B' order by status desc";
        objConn.RetriveDS(SltSegment);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {
            gvbats.DataSource = objConn.dsCommon;
            gvbats.DataBind();
        }

        else
        {
            gvbats.DataSource = null;
            gvbats.DataBind();
        }
        return objConn.dsCommon;

    }
    public DataSet Bowler()
    {
        string SltSegment = "SELECT * FROM pballstate where status<>'N' and " + "playstatus ='R' ";
        objConn.RetriveDS(SltSegment);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {
            gvballs.DataSource = objConn.dsCommon;
            gvballs.DataBind();
        }

        else
        {
            gvballs.DataSource = null;
            gvballs.DataBind();
        }
        return objConn.dsCommon;

    }
}