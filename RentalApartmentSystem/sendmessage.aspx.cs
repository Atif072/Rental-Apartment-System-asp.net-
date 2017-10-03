using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tempad : System.Web.UI.Page
{
    public int f = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            Session["name"] = "";
            Session["login"] = "";

        }
        if (Page.IsCallback)
        {
            if (Session["login"].ToString() == "logout")
            {
                Button4.Text = "Hi " + Session["name"].ToString();
            }
            else
            {
                Button4.Text = "Login/SignUp";

            }
        }
           
    }
    protected void SendButton_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\CSE L-3T-2\Software Development\Final GUI\App_Data\regDatabase.mdf");

        int per_id = Convert.ToInt32(Session["owner"]);
        string query = "insert into MessageTable(From1,Body,To1) values('" + MobileText.Text + "','" + smsT.Text + "','"+ per_id +"');";
                
        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        conn.Open();
        da.SelectCommand.ExecuteNonQuery();
        conn.Close();
        f=1;
        if(f==1)
        {
            Label1.Text = "Message Sent Successfully.";
            Response.Redirect("detail.aspx");
        }
        


            
            
    }
    protected void MessageT_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("PostAdd.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AllAddsView.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void textT_TextChanged(object sender, EventArgs e)
    {

    }
}