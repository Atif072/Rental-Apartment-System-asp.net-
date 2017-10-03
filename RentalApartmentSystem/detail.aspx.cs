using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class detail : System.Web.UI.Page
{
    public int apt_id;
    public int per_id;
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\CSE L-3T-2\Software Development\Final GUI\App_Data\regDatabase.mdf");
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

        int adNum=Convert.ToInt32(Session["adNum"]);
        if (adNum == 1)
        {
            apt_id = Convert.ToInt32(Session["apId0"]);
        }

        
        SqlCommand cmd = new SqlCommand("GetApartmentById", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter Search_aprtment = new SqlParameter();
        Search_aprtment.ParameterName = "@Id";
        Search_aprtment.Value = apt_id;
        cmd.Parameters.Add(Search_aprtment);

        conn.Open();
        SqlDataReader reader1 = cmd.ExecuteReader();
        while (reader1.Read())
        {

            per_id = (int)reader1["ParsonId"];
            Session["owner"] = per_id;
            Label7.Text = reader1["AreaName"].ToString();
            Label9.Text = reader1["BedRoomNo"].ToString();
            Label10.Text= reader1["BathRoomNo"].ToString();
            //apt.person = Convert.ToInt32(reader1["ParsonId"]);
            Label15.Text= reader1["Price"].ToString();

            byte[] bytes = (byte[])reader1["ImageData"];
            string imageData = Convert.ToBase64String(bytes);
            //string imageData = reader1["ImageData"].ToString();
            Image1.ImageUrl = "data:Image/png;base64," + imageData;

            //apt.thana = reader1["Thana"].ToString();
            Label8.Text = reader1["ApartmentSize"].ToString();
            Label11.Text = reader1["MobileNo"].ToString();
            Label12.Text = reader1["Email"].ToString();
            Label13.Text = reader1["StatusBox"].ToString();
        }

        reader1.Close();


        SqlCommand cmd1 = new SqlCommand("GetPersonById", conn);
        cmd1.CommandType = CommandType.StoredProcedure;

        SqlParameter Search_parson = new SqlParameter();
        Search_parson.ParameterName = "@Id";
        Search_parson.Value = per_id;
        cmd1.Parameters.Add(Search_parson);

        SqlDataReader reader2 = cmd1.ExecuteReader();
        while (reader2.Read())
        {
            Label16.Text = reader2["Name"].ToString();
            
        }
        reader2.Close();
        conn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("sendmessage.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
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

}