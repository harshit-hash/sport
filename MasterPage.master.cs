using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    dbcon objConn = new dbcon();
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!IsPostBack)
        {
            //string count= "select * from visitor";
            //objConn.RetriveDS(count);
            //if (objConn.dsCommon.Tables[0].Rows.Count != 0)
            //{
            //    objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
            //    if (objConn.conPGeKosh.State == ConnectionState.Closed)
            //    {
            //        objConn.conPGeKosh.Open();
            //        //return;
            //    }

            //    objConn.TransPG = objConn.conPGeKosh.BeginTransaction(IsolationLevel.ReadCommitted);


            //    lblCount.Text = Application["NoOfVisitors"].ToString();
            //    string upd = "UPDATE visitor SET view='" + lblCount.Text + "'";
            //    objConn.cmdPG = new MySqlCommand(upd, objConn.conPGeKosh);
            //    objConn.cmdPG.Transaction = objConn.TransPG;
            //    objConn.cmdPG.ExecuteNonQuery();
            //}

            lblCount.Text = Application["NoOfVisitors"].ToString();
            if (Session["Login"] == null)
            {
                BtnReg.Visible = true;
                BtnLogOut.Visible = false;
                BtnAdmin.Visible = false;

            }
            else
            {
                if (Session["Login"] == "Alogin")
                {
                    BtnReg.Visible = false;
                    BtnLogOut.Visible = true;
                    BtnAdmin.Visible = true;
                }
                else {
                    BtnReg.Visible = false;
                    BtnLogOut.Visible = true;
                    BtnAdmin.Visible = false;
                }
            }
        }

    }
    protected void imgread_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

    }
   
  
   
    protected void BtnLogOut_Click(object sender, EventArgs e)
    {

        Session["Login"] = null;
        BtnReg.Visible = true;
        BtnLogOut.Visible = false;
        BtnAdmin.Visible = false;
        Response.Redirect("~/home.aspx");
    }
}
