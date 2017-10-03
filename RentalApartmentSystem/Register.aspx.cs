using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\CSE L-3T-2\Software Development\Final GUI\App_Data\regDatabase.mdf");

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Tsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            conn.Open();

            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From ParsonInfo Where Email= '" + EmailT.Text + "'", conn);
            DataTable dt = new System.Data.DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                StatusT.Text = "This Email Address has been already used!";
                
            }
            else
            {
                SqlCommand com = conn.CreateCommand();
                com.CommandType = System.Data.CommandType.Text;
                com.CommandText = "INSERT INTO ParsonInfo VALUES ('" + UserNameT.Text + "','" + EmailT.Text + "','" + PasswordT.Text + "' )";

                com.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/RegistrationSuccess.aspx");
            }

            
        }
        catch (Exception ex)
        {
            Response.Write("error:" + ex.ToString());
        }

        //Response.Write("Your Registration Is Successful");
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
        Response.Redirect("~/AllAddView.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }
}