using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationSuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
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
        Response.Redirect("~/Login.aspx");
    }
}