using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\CSE L-3T-2\Software Development\Final GUI\App_Data\regDatabase.mdf"); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadGridView();
        }
    }
    private void LoadGridView()
    {
        SqlDataAdapter adap = new SqlDataAdapter("select * from ApartmentInfo", conn);
        DataSet ds = new DataSet();
        adap.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            var chk = row.FindControl("chkDelete") as CheckBox;
            if (chk.Checked)
            {
                var libID = row.FindControl("lblAPartmentId") as Label;

                SqlCommand com = new SqlCommand();
                com.CommandText = "delete from ApartmentInfo where ApartmentId=@id";
                com.Connection = conn;
                com.Parameters.AddWithValue("@id", int.Parse(libID.Text));

                conn.Open();
                com.ExecuteNonQuery();
                conn.Close();


                



            }
        }

        LoadGridView();


    }
    protected void smsT_Click(object sender, EventArgs e)
    {
        Response.Redirect("MessageBox.aspx");
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
        Response.Redirect("~/HomePage.aspx");
    }
}