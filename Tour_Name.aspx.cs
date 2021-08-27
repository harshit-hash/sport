using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Threading;







public partial class showmatch : System.Web.UI.Page
{
    dbcon objConn = new dbcon();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string majorhead = "select game,game from gamename";
           
            objConn.FillDDL(majorhead, ddGame);
            ddGame.Items.Insert(0, "Select");
        }//try
        //{
            

        //    string majorhead = "select team1,team2 from sport";
        //    objConn.RetriveDS(majorhead);

        //    if (objConn.dsCommon.Tables[0].Rows.Count > 0)
        //    {
        //        lblTeam1.Text = objConn.dsCommon.Tables[0].Rows[0]["team1"].ToString();
        //        lblTeam2.Text = objConn.dsCommon.Tables[0].Rows[0]["team2"].ToString();
               
        //    }
        //    else
        //    {
        //        lblTeam1.Text = "";
        //        lblTeam1.Text = "";
        //    }
        //    //ScriptManager.GetCurrent(this).SetFocus(ddlSubMajorHead);
        //}
        //catch (Exception Err)
        //{
        //    string ErrMsg = Err.Message.ToString().Replace("'", "");
            
        //    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('" + ErrMsg + "');</script>", false);
        //}
        //finally
        //{
        //    if (objConn.cmdPG != null)
        //    {
        //        objConn.cmdPG.Dispose();
        //    }
        //    if (objConn.conPGeKosh != null)
        //    {
        //        objConn.conPGeKosh.Dispose();
        //    }
        //}
        
    }
    public void clearControl()
    {
        TxtTourName.Text = "";
    


    }
  
  
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            if (TxtTourName.Text.Trim() == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter Team- Name');</script>", false);
            }

            else
            {
                objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
                if (objConn.conPGeKosh.State == ConnectionState.Closed)
                {
                    objConn.conPGeKosh.Open();
                    //return;
                }



                string SqlInsertbtr = "Insert into tournamentname(tournamentname,game) values(@tournamentname,@game)";
                objConn.cmdPG = new MySqlCommand(SqlInsertbtr, objConn.conPGeKosh);
                //objConn.cmdPG.Transaction = objConn.TransPG;

                objConn.cmdPG.Parameters.AddWithValue("tournamentname", TxtTourName                                                                                                                                                                             .Text.Trim());
                objConn.cmdPG.Parameters.AddWithValue("game", ddGame.SelectedItem.Text.Trim());


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
    public DataSet bindgv()
    {
        string SltSegment = "SELECT * FROM tournamentname where game='" + ddGame.SelectedItem.Text + "'";
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
    protected void ddGame_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindgv();
    }
   
    
    
  
    protected void gv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        GridViewRow row = (GridViewRow)gv.Rows[e.RowIndex];
        string Bowler1 = "DELETE FROM tournamentname where game='" + ddGame.SelectedItem.Text + "' and " + "tournamentname='" +row.Cells[0].Text + "'";
        objConn.Delete(Bowler1);
        //objConn.cmdPG = new MySqlCommand(Bowler1, objConn.conPGeKosh);
       // objConn.cmdPG.ExecuteNonQuery();

        bindgv();
        ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Successfully Deleted..');</script>", false);
        
    }
}