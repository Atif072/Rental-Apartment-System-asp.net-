using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class PostAdd : System.Web.UI.Page
{


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
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/PostAdd.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AllAddsView.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        HttpPostedFile postedFile = FileUpload1.PostedFile;
        string filename = Path.GetFileName(postedFile.FileName);
        string fileExtension = Path.GetExtension(filename);
        int fileSize = postedFile.ContentLength;
 
        Stream stream = postedFile.InputStream;
        BinaryReader binaryReader = new BinaryReader(stream);
        Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

        conn.Open();
        SqlCommand com = conn.CreateCommand();
        com.CommandType = System.Data.CommandType.Text;
        /*
         *@DId int,
@AreaName nvarchar(50),
@BedRoomNo nvarchar(10),
@BathRoomNo nvarchar(50),
@Price nvarchar(50),
@ParsonId int,
@ImageData varbinary(MAX),
@Thana nvarchar(50),
@ApartmentSize nvarchar(50),
@MobileNo nvarchar(50),
@Email nvarchar(50),
@Status nvarchar(MAX)
         */
        SqlCommand cmd = new SqlCommand("ApartmentInsert", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter District = new SqlParameter()
        {
            ParameterName = "@DId",
            Value = districtT.SelectedItem.Value
        };
        cmd.Parameters.Add(District);

        SqlParameter paramName = new SqlParameter()
        {
            ParameterName = "@AreaName",
            Value = areaT.Text
        };
        cmd.Parameters.Add(paramName);

        SqlParameter paramSize = new SqlParameter()
        {
            ParameterName = "@BedRoomNo",
            Value = bedT.Text
        };
        cmd.Parameters.Add(paramSize);

        SqlParameter paramImageData = new SqlParameter()
        {
            ParameterName = "@BathRoomNo",
            Value = bathT.Text
        };
        cmd.Parameters.Add(paramImageData);

        SqlParameter paramNewId = new SqlParameter()
        {
            ParameterName = "@Price",
            Value = priceT.Text
        };
        cmd.Parameters.Add(paramNewId);

        SqlParameter ApartId = new SqlParameter()
        {
            ParameterName = "@ParsonId",
            Value = 100
            
        };
        cmd.Parameters.Add(ApartId);

        SqlParameter MobileNo = new SqlParameter()
        {
            ParameterName = "@ImageData",
            Value = bytes
            
        };
        cmd.Parameters.Add(MobileNo);

        SqlParameter thanaName = new SqlParameter()
        {
            ParameterName = "@Thana",
            Value = thanaT.Text
            
        };
        cmd.Parameters.Add(thanaName);

        SqlParameter ApartmentS = new SqlParameter()
        {
            ParameterName = "@ApartmentSize",
            Value = size_aptT.Text
            
        };
        cmd.Parameters.Add(ApartmentS);


        SqlParameter  Mobile= new SqlParameter()
        {
            ParameterName = "@MobileNo",
            Value = mobileNoT.Text
            
        };
        cmd.Parameters.Add(Mobile);

        SqlParameter EmailS = new SqlParameter()
        {
            ParameterName = "@Email",
            Value = emailT.Text

        };
        cmd.Parameters.Add(EmailS);

        SqlParameter statusTe = new SqlParameter()
        {
            ParameterName = "@Status",
            Value = textT.Text

        };
        cmd.Parameters.Add(statusTe);

        cmd.ExecuteNonQuery();
        conn.Close();
   
        
       /* com.CommandText = "INSERT Into ApartmentInfo VALUES ('" + districtT.Text + "','" + areaT.Text + "','" + bedT.Text + "','" + bathT.Text + "','" + priceT.Text + "', NULL, CAST(bytes AS VARBINARY(MAX),'" + thanaT.Text + "','" + size_aptT.Text + "','" + mobileNoT.Text + "','" + emailT.Text + "','" + textT.Text + "')";
        com.ExecuteNonQuery();
        conn.Close();*/
        Response.Redirect("~/Confirmation.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ButtonPic_Click(object sender, EventArgs e)
    {
        
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void textT_TextChanged(object sender, EventArgs e)
    {

    }
}