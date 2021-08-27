using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


public partial class Register : System.Web.UI.Page
{
    dbcon objConn = new dbcon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtFirstName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtfname.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter fname');</script>", false);
        }

        else if (txtuser.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter username');</script>", false);
        }
        else if (txtpass.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter Password');</script>", false);
        }
        else if (txtemail.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter email id');</script>", false);
        }
        else
        {
            string SltSegment = "SELECT * FROM registration where username='" + txtuser.Text.Trim() + "'";


            objConn.RetriveDS(SltSegment);

            if (objConn.dsCommon.Tables[0].Rows.Count != 0)
            {

                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please enter different username .');</script>", false);

            }

            else
            {
                string SltSegment1 = "SELECT email FROM registration where email='" + txtemail.Text.Trim() + "'";


                objConn.RetriveDS(SltSegment1);

                if (objConn.dsCommon.Tables[0].Rows.Count != 0)
                {

                    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please enter different email id .');</script>", false);
                }
                else
                {
                    objConn.conPGeKosh = new MySqlConnection(objConn.csPG);
                    if (objConn.conPGeKosh.State == ConnectionState.Closed)
                    {
                        objConn.conPGeKosh.Open();
                        //return;
                    }
                    string SqlInsertbtr = "Insert into registration(fullname,username,password,email) values(@fullname,@username,@password,@email)";
                    objConn.cmdPG = new MySqlCommand(SqlInsertbtr, objConn.conPGeKosh);
                    //objConn.cmdPG.Transaction = objConn.TransPG;

                    objConn.cmdPG.Parameters.AddWithValue("fullname", txtfname.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("password", txtpass.Text.Trim());
                    objConn.cmdPG.Parameters.AddWithValue("username", txtuser.Text.Trim().ToLower());
                    objConn.cmdPG.Parameters.AddWithValue("email", txtemail.Text.Trim());


                    objConn.cmdPG.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('successfull register...');</script>", false);

                    clearControl();
                }
            }
        }
    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        if (txtusername.Text.Trim()=="") {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter UserName');</script>", false);
        }
        else if (txtpassword.Text.Trim() == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Please Enter Password');</script>", false);
        }
        else
        {
            string SltSegment = "SELECT * FROM registration where username='" + txtusername.Text.Trim() + "' and" +
                        " password='" + txtpassword.Text.Trim() + "'" ;

            objConn.RetriveDS(SltSegment);

            if (objConn.dsCommon.Tables[0].Rows.Count != 0)
            {
                string Flagg = "SELECT flag FROM registration where flag='A'and " + "username='" + txtusername.Text.Trim() + "' and" +
                        " password='" + txtpassword.Text.Trim() + "'";

                objConn.RetriveDS(Flagg);


                if (objConn.dsCommon.Tables[0].Rows.Count != 0)
                {
                    clearControl();
                     Session["Login"]="Alogin";
                    Response.Redirect("~/Admin.aspx");
             
                }
                else
                {
                    clearControl();
                    Session["Login"] = "Ulogin";
                    Response.Redirect("~/User.aspx");

                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('User id/password not available.');</script>", false);
            }
        }
    }
    public void clearControl(){
        txtusername.Text = "";
        txtpassword.Text = "";
        txtemail.Text = "";
        txtfname.Text = "";
        txtpass.Text = "";
        txtuser.Text = "";
     
 
    }
}