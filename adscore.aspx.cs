using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class adscore : System.Web.UI.Page
{
    dbcon objConn = new dbcon();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                string Tourn = "select tournamentname,tournamentname from tournamentname";

                objConn.FillDDL(Tourn, ddTourn);

                ddTourn.Items.Insert(0, "Select");

                //TreasuryCode = Session["TreasuryCode"].ToString();

                // ScriptManager.GetCurrent(this).SetFocus(GvBat);

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






    

    protected void btnViewPlay_Click(object sender, EventArgs e)
    {
        try {

            objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
            if (objConn.conPGeKosh.State == ConnectionState.Closed)
            {
                objConn.conPGeKosh.Open();
                //return;
            }
            
            objConn.TransPG = objConn.conPGeKosh.BeginTransaction(IsolationLevel.ReadCommitted);


            string Batsman1 = "SELECT playstatus FROM playerstate where teamname='" + ddBat.SelectedItem.Text + "'";
            //objConn.RetriveDS(Batsman1);
            objConn.dsCommon = new DataSet();
            objConn.cmdPG = new MySqlCommand(Batsman1, objConn.conPGeKosh);
            objConn.cmdPG.Transaction = objConn.TransPG;
            objConn.daPG = new MySqlDataAdapter(objConn.cmdPG);
            objConn.daPG.Fill(objConn.dsCommon);

            if (objConn.dsCommon.Tables[0].Rows.Count != 0)
            {

                string upd = "UPDATE playerstate SET playstatus='N'";
                    //where teamname='" + ddBat.SelectedItem.Text + "'";
                objConn.cmdPG = new MySqlCommand(upd, objConn.conPGeKosh);
                objConn.cmdPG.Transaction = objConn.TransPG;
                objConn.cmdPG.ExecuteNonQuery();
                string upd1 = "UPDATE playerstate SET playstatus='B' where teamname='" + ddBat.SelectedItem.Text + "'";
                objConn.cmdPG = new MySqlCommand(upd1, objConn.conPGeKosh);
                objConn.cmdPG.Transaction = objConn.TransPG;
                objConn.cmdPG.ExecuteNonQuery();
                string upd2 = "UPDATE pballstate SET playstatus='N'";
                //where teamname='" + ddBall.SelectedItem.Text + "'";
                objConn.cmdPG = new MySqlCommand(upd2, objConn.conPGeKosh);
                objConn.cmdPG.Transaction = objConn.TransPG;
                objConn.cmdPG.ExecuteNonQuery();
                string upd3 = "UPDATE pballstate SET playstatus='R' where teamname='" + ddBall.SelectedItem.Text + "'";
                objConn.cmdPG = new MySqlCommand(upd3, objConn.conPGeKosh);
                objConn.cmdPG.Transaction = objConn.TransPG;
                objConn.cmdPG.ExecuteNonQuery();

            } objConn.TransPG.Commit();
        }
        catch (Exception Err)
        {
            string ErrMsg = Err.Message.ToString().Replace("'", "");
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('" + ErrMsg + "');</script>", false);
            objConn.TransPG.Rollback();
        }

        finally
        {
            objConn.conPGeKosh.Dispose();

        }
        string Batsman = "select pname,pname from playerstate where teamname='" + ddBat.SelectedItem.Text + "' and " + "status<>'O'";

        objConn.FillDDL(Batsman, ddPName);

        ddPName.Items.Insert(0, "Select");

        string Batsman2 = "select pname,pname from playerstate where teamname='" + ddBat.SelectedItem.Text + "'and " + "status<>'O'";

        objConn.FillDDL(Batsman, ddPName2);

        ddPName2.Items.Insert(0, "Select");

        string Bowler = "select pname,pname from pballstate where teamname='" + ddBall.SelectedItem.Text + "'";

        objConn.FillDDL(Bowler, ddBowName);

        ddBowName.Items.Insert(0, "Select");

    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {

            //GridViewRow row = (GridViewRow)((Button)sender).NamingContainer;  //{For access text box of Grid view from here
            //TextBox txtOver = row.FindControl("txtOver") as TextBox;
            //TextBox txtRun = row.FindControl("txtRun") as TextBox;
            //TextBox TxtWicket = row.FindControl("TxtWicket") as TextBox;
            //to here}
            objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
            if (objConn.conPGeKosh.State == ConnectionState.Closed)
            {
                objConn.conPGeKosh.Open();
                //return;
            }
            
            objConn.TransPG = objConn.conPGeKosh.BeginTransaction(IsolationLevel.ReadCommitted);


            string Batsman1 = "SELECT * FROM playerstate where pname='" + ddPName.SelectedItem.Text + "'";
            //objConn.RetriveDS(Batsman1);
            objConn.dsCommon = new DataSet();
            objConn.cmdPG = new MySqlCommand(Batsman1, objConn.conPGeKosh);
            objConn.cmdPG.Transaction = objConn.TransPG;
            objConn.daPG = new MySqlDataAdapter(objConn.cmdPG);
            objConn.daPG.Fill(objConn.dsCommon);

            if (objConn.dsCommon.Tables[0].Rows.Count != 0)
            {
               
                string upd = "UPDATE playerstate SET run='" + TxtBatRun.Text + "',ball='" + TxtBatBall.Text + "',four='" + TxtBat4.Text + "',six='" + TxtBat6.Text + "',status='" + RbtnBat1.SelectedValue + "' where pname='" + ddPName.SelectedItem.Text + "'  and " + "teamname='" + ddBat.SelectedItem.Text + "'";
                objConn.cmdPG = new MySqlCommand(upd, objConn.conPGeKosh);
                objConn.cmdPG.Transaction = objConn.TransPG;
                objConn.cmdPG.ExecuteNonQuery();
            }
            else
            {
                
                string Batsman11 = "Insert into playerstate(run,ball,four,six,pname,status,totalrun,totalwicket) values(@run,@ball,@four,@six,@pname,@status,@totalrun,@totalwicket)";
                objConn.cmdPG = new MySqlCommand(Batsman11, objConn.conPGeKosh);
                //objConn.cmdPG.Transaction = objConn.TransPG;
                objConn.cmdPG.Transaction = objConn.TransPG;

                objConn.cmdPG.Parameters.AddWithValue("run", TxtBatRun.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("ball", TxtBatBall.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("four", TxtBat4.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("six", TxtBat6.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("status", RbtnBat1.SelectedValue.Trim());
                


                objConn.cmdPG.ExecuteNonQuery();
            }
            string Batsman2 = "SELECT * FROM playerstate where pname='" + ddPName2.SelectedItem.Text + "'";
            objConn.dsCommon = new DataSet();
            objConn.cmdPG = new MySqlCommand(Batsman2, objConn.conPGeKosh);
            objConn.cmdPG.Transaction = objConn.TransPG;
            objConn.daPG = new MySqlDataAdapter(objConn.cmdPG);
            objConn.daPG.Fill(objConn.dsCommon);

            if (objConn.dsCommon.Tables[0].Rows.Count != 0)
            {

                string upd = "UPDATE playerstate SET run='" + TxtBatRun2.Text + "',ball='" + TxtBatBall2.Text + "',four='" + TxtBat42.Text + "',six='" + TxtBat62.Text + "',status='" + RbtnBat2.SelectedValue + "' where pname='" + ddPName2.SelectedItem.Text + "' and " + "teamname='" + ddBat.SelectedItem.Text + "'";
                objConn.cmdPG = new MySqlCommand(upd, objConn.conPGeKosh);
                objConn.cmdPG.Transaction = objConn.TransPG;
                objConn.cmdPG.ExecuteNonQuery();
            }
            else
            {
                string Batsman22 = "Insert into playerstate(run,ball,four,six,pname,status,totalrun,totalwicket) values(@run,@ball,@four,@six,@pname,@status,@totalrun,@totalwicket)";
                objConn.cmdPG = new MySqlCommand(Batsman22, objConn.conPGeKosh);
                //objConn.cmdPG.Transaction = objConn.TransPG;
                objConn.cmdPG.Transaction = objConn.TransPG;

                objConn.cmdPG.Parameters.AddWithValue("run", TxtBatRun2.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("ball", TxtBatBall2.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("four", TxtBat42.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("six", TxtBat62.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("status", RbtnBat2.SelectedValue.Trim());
            



                objConn.cmdPG.ExecuteNonQuery();
            }

            string Bowler = "SELECT * FROM pballstate where pname='" + ddBowName.SelectedItem.Text + "'";
            objConn.dsCommon = new DataSet();
            objConn.cmdPG = new MySqlCommand(Bowler, objConn.conPGeKosh);
            objConn.cmdPG.Transaction = objConn.TransPG;
            objConn.daPG = new MySqlDataAdapter(objConn.cmdPG);
            objConn.daPG.Fill(objConn.dsCommon);

            if (objConn.dsCommon.Tables[0].Rows.Count != 0)
            {
                string upd = "UPDATE pballstate SET over='" + txtOver.Text + "',run='" + txtRun.Text + "',wicket='" + TxtWicket.Text + "',status='" + RbtnBow.SelectedValue + "' ,totalover='" + txtTotlOver.Text + "' where pname='" + ddBowName.SelectedItem.Text + "' and " + "teamname='" + ddBall.SelectedItem.Text + "'";
                objConn.cmdPG = new MySqlCommand(upd, objConn.conPGeKosh);
                objConn.cmdPG.Transaction = objConn.TransPG;
                objConn.cmdPG.ExecuteNonQuery();
            }
            else
            {
                string Bowler1 = "Insert into pballstate(over,run,wicket,pname,status,totalover) values(@over,@run,@wicket,@pname,@status,@totalover)";
                objConn.cmdPG = new MySqlCommand(Bowler1, objConn.conPGeKosh);
                objConn.cmdPG.Transaction = objConn.TransPG;


                objConn.cmdPG.Parameters.AddWithValue("over", txtOver.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("run", txtRun.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("wicket", TxtWicket.Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("status", RbtnBow.SelectedValue.Trim());
                objConn.cmdPG.Parameters.AddWithValue("totalover", txtTotlOver.Text.Trim());

                objConn.cmdPG.ExecuteNonQuery();
            }


            objConn.TransPG.Commit();
            //clearControl();
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Successfull Saved...');</script>", false);
        }

        catch (Exception Err)
        {
            string ErrMsg = Err.Message.ToString().Replace("'", "");
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('" + ErrMsg + "');</script>", false);
            objConn.TransPG.Rollback();
        }

        finally
        {
            objConn.conPGeKosh.Dispose();

        }
    }
    protected void ddPName_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Team = "SELECT * FROM playerstate where pname='" + ddPName.SelectedItem.Text + "'";
        objConn.RetriveDS(Team);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {

            TxtBatRun.Text = objConn.dsCommon.Tables[0].Rows[0]["run"].ToString();
            TxtBatBall.Text = objConn.dsCommon.Tables[0].Rows[0]["ball"].ToString();
            TxtBat4.Text = objConn.dsCommon.Tables[0].Rows[0]["four"].ToString();
            TxtBat6.Text = objConn.dsCommon.Tables[0].Rows[0]["six"].ToString();


        }
        else
        {
            TxtBatRun.Text = "";
            TxtBat4.Text = "";
            TxtBatBall.Text = "";
            TxtBat6.Text = "";

        }
    }

    protected void ddPName2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Team = "SELECT * FROM playerstate where pname='" + ddPName2.SelectedItem.Text + "'";
        objConn.RetriveDS(Team);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {

            TxtBatRun2.Text = objConn.dsCommon.Tables[0].Rows[0]["run"].ToString();
            TxtBatBall2.Text = objConn.dsCommon.Tables[0].Rows[0]["ball"].ToString();
            TxtBat42.Text = objConn.dsCommon.Tables[0].Rows[0]["four"].ToString();
            TxtBat62.Text = objConn.dsCommon.Tables[0].Rows[0]["six"].ToString();


        }
        else
        {
            TxtBatRun2.Text = "";
            TxtBat42.Text = "";
            TxtBatBall2.Text = "";
            TxtBat62.Text = "";

        }
    }
    protected void ddBowName_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Team = "SELECT * FROM pballstate where pname='" + ddBowName.SelectedItem.Text + "'";
        objConn.RetriveDS(Team);
        if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        {

            txtRun.Text = objConn.dsCommon.Tables[0].Rows[0]["run"].ToString();
            txtOver.Text = objConn.dsCommon.Tables[0].Rows[0]["over"].ToString();
            TxtWicket.Text = objConn.dsCommon.Tables[0].Rows[0]["wicket"].ToString();

        }
        else
        {
            txtRun.Text = "";
            txtOver.Text = "";
            TxtWicket.Text = "";


        }
    }
    protected void ddTourn_SelectedIndexChanged(object sender, EventArgs e)
    {
        string bat = "select team1,team1 from sport where tourn='" + ddTourn.SelectedItem.Text + "' and " + "  date_format(matchdate, '%d-%m-%Y')=date_format(current_date,'%d-%m-%Y')" +
           " union " +
           " select team2,team2 from sport where tourn='" + ddTourn.SelectedItem.Text + "' and " + "  date_format(matchdate, '%d-%m-%Y')=date_format(current_date,'%d-%m-%Y')  ";

        objConn.FillDDL(bat, ddBat);

        ddBat.Items.Insert(0, "Select");

        string ball = "select team1,team1 from sport where tourn='" + ddTourn.SelectedItem.Text + "' and " + "  date_format(matchdate, '%d-%m-%Y')=date_format(current_date,'%d-%m-%Y') union select team2,team2 from sport where tourn='" + ddTourn.SelectedItem.Text + "' and " + "  date_format(matchdate, '%d-%m-%Y')=date_format(current_date,'%d-%m-%Y')  ";

        objConn.FillDDL(ball, ddBall);

        ddBall.Items.Insert(0, "Select");
    }
    protected void ddBat_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ball = "select team1,team1 from sport where tourn='" + ddTourn.SelectedItem.Text + "' and " + "  date_format(matchdate, '%d-%m-%Y')=date_format(current_date,'%d-%m-%Y') union select team2,team2 from sport where tourn='" + ddTourn.SelectedItem.Text + "' and " + "  date_format(matchdate, '%d-%m-%Y')=date_format(current_date,'%d-%m-%Y')  ";

        objConn.FillDDL(ball, ddBall);

        ddBall.Items.Insert(0, "Select");
        
      
                
    }
    protected void ddBall_SelectedIndexChanged(object sender, EventArgs e)
    {
        //objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
        //string Bowler = "SELECT playstatus FROM playerstate where teamname='" + ddBat.SelectedItem.Text + "'";
        //objConn.dsCommon = new DataSet();
        //objConn.cmdPG = new MySqlCommand(Bowler, objConn.conPGeKosh);
        //objConn.cmdPG.Transaction = objConn.TransPG;
        //objConn.daPG = new MySqlDataAdapter(objConn.cmdPG);
        //if (objConn.dsCommon.Tables[0].Rows.Count != 0)
        //{
        //    string upd = "UPDATE playerstate SET playstatus='R' where teamname='" + ddBall.SelectedItem.Text + "'";
        //    objConn.cmdPG = new MySqlCommand(upd, objConn.conPGeKosh);
        //    objConn.cmdPG.Transaction = objConn.TransPG;
        //    objConn.cmdPG.ExecuteNonQuery();
        //}
                
    }
}