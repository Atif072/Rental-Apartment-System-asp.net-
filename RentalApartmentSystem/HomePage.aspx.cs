using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
       if (!Page.IsPostBack)
        {
            Session["name"] = "";
            Session["login"] = "";
            
        }
       if(Page.IsCallback)
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
        
    protected void Button1_Click(object sender, EventArgs e)
{

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
protected void Button5_Click(object sender, EventArgs e)
{
      //Session["area"] = districtT.SelectedItem.Value;
      //Session["price"] = priceT.Text;
     Response.Redirect("~/AllAddsView.aspx");
}
protected void TextBox2_TextChanged(object sender, EventArgs e)
{

}
}
    
   