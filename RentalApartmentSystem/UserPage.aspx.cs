using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button4.Text ="Hi "+ Session["name"].ToString();
        GridView1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/PostAdd.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AllAddsView.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["login"] = "login";
        Response.Redirect("~/HomePage.aspx");

    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }

    protected void Button7_Click1(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}