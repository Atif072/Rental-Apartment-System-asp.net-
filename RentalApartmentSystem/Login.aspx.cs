using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\CSE L-3T-2\Software Development\Final GUI\App_Data\regDatabase.mdf");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    


    protected override PageStatePersister PageStatePersister
    {
        get
        {
            //return base.PageStatePersister;
            return new SessionPageStatePersister(this);
        }
    }
  
 

   

    protected void Button5_Click(object sender, EventArgs e)
    {

        if (UserNameT.Text == "admin" && PasswordT.Text == "admin")
        {
            Response.Redirect("admin.aspx");
        }
        else
        {
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From ParsonInfo Where Name= '" + UserNameT.Text + "' and Pasword='" + PasswordT.Text + "'", conn);
            DataTable dt = new System.Data.DataTable();
            sda.Fill(dt);



            if (dt.Rows[0][0].ToString() == "1")
            {
                SqlCommand cmd = new SqlCommand("Select * From ParsonInfo Where Name= '" + UserNameT.Text + "' and Pasword='" + PasswordT.Text + "'", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                Session["name"] = "";
                //Loop through all records building a string
                while (reader.Read())
                {
                    // flag = 1;
                    //message = message + reader["Name"] + " " + reader["Email"] + ", " + reader["Pasword"] + "<br>";
                    Session["name"] = reader["Name"];
                }
                reader.Close();
                Session["login"] = "logout";
                Response.Redirect("~/UserPage.aspx");
            }
            else
            {
                Session["login"] = "login";
                UserNameT.Text = "";
                PasswordT.Text = "";
            }
        }
        
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AllAddsView.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBoxName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBoxPass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBoxConPass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBoxEmail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBoxMobile_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/PostAdd.aspx");
    }
    protected void Treg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Register.aspx");
    }
}