using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;






public partial class AllAddsView : System.Web.UI.Page
{



    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\CSE L-3T-2\Software Development\Final GUI\App_Data\regDatabase.mdf"); 
    public string area_name = "";
    public int price ;
    public int district_id;
    public int pageNumber;
    public int totalPages;
    public int d_id;

    
    protected void Page_Load(object sender, EventArgs e)
    {
          
          //Response.Write(area_name);
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

       /*SqlCommand cmd = new SqlCommand("GetDistrictById", conn);
       cmd.CommandType = CommandType.StoredProcedure;

       SqlParameter Search_dist = new SqlParameter();
       Search_dist.ParameterName = "@dName";
       Search_dist.Value = area_name;
       cmd.Parameters.Add(Search_dist);

        conn.Open();
        SqlDataReader reader1 = cmd.ExecuteReader();
        while (reader1.Read())
        {

            d_id = (int)reader1["DId"];
            //Response.Write(d_id);
        }
        reader1.Close();
        conn.Close();
        */
        


        if (!IsPostBack)
        {
            int totalRows = 0;
            List<Searched_Apartment> S_Apartment_List = new List<Searched_Apartment>();
            S_Apartment_List = ApartmentDataAccessLayer.GetApartmentInfo(0, 4, out totalRows);

           
            statusT1.Text = S_Apartment_List[0].location_name;
            string item1=S_Apartment_List[0].bed.ToString()+" BedRooms";
            string item2=S_Apartment_List[0].bath.ToString()+" BathRooms";
            apaI1.ImageUrl = "data:Image/png;base64," + S_Apartment_List[0].imageData;
            Session["ApId0"] = S_Apartment_List[0].Apartment_id.ToString();

            Label1.Text = item1;
            Label2.Text = item2;

            statusT2.Text = S_Apartment_List[1].location_name;
            item1 = S_Apartment_List[1].bed.ToString() + " BedRooms";
            item2 = S_Apartment_List[1].bath.ToString() + " BathRooms";
            apaI2.ImageUrl = "data:Image/png;base64," + S_Apartment_List[1].imageData;
            Session["ApId1"] = S_Apartment_List[1].Apartment_id.ToString();


            Label3.Text = item1;
            Label4.Text = item2;

           /* statusT3.Text = S_Apartment_List[2].location_name;
            item1 = S_Apartment_List[2].bed.ToString() + " BedRooms";
            item2 = S_Apartment_List[2].bath.ToString() + " BathRooms";
            apaI3.ImageUrl = "data:Image/png;base64," + S_Apartment_List[2].imageData;
            Session["ApId2"] = S_Apartment_List[2].Apartment_id.ToString();


            Label5.Text = item1;
            Label6.Text = item2;

            statusT4.Text = S_Apartment_List[3].location_name;
            item1 = S_Apartment_List[3].bed.ToString() + " BedRooms";
            item2 = S_Apartment_List[3].bath.ToString() + " BathRooms";
            apaI4.ImageUrl = "data:Image/png;base64," + S_Apartment_List[3].imageData;
            Session["ApId3"] = S_Apartment_List[3].Apartment_id.ToString();


            Label7.Text = item1;
            Label8.Text = item2;*/
            

            PagingData(1, 4, totalRows);
        }

        


       
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

    private void PagingData(int pageIndex, int pageSize, int totalRows)
    {
        totalPages = totalRows / pageSize;
        if ((totalRows % pageSize) != 0)
        {
            totalPages += 1;

        }
        //List<ListItem> pages = new List<ListItem>();
        if (totalPages > 1)
        {
            for (int i = 1; i <= totalPages; i++)
            {
                PagingT.Items.Add(i.ToString());
            }
        }

    }
 
    protected void PagingT_SelectedIndexChanged(object sender, EventArgs e)
    {
        int totalRows = 0;
        pageNumber = Convert.ToInt32(PagingT.Text);
        pageNumber -= 1;

        List<Searched_Apartment> S_Apartment_List = new List<Searched_Apartment>();
        S_Apartment_List = ApartmentDataAccessLayer.GetApartmentInfo(pageNumber, 4, out totalRows);
        if (pageNumber < totalPages-1 )
        {
            statusT1.Text = S_Apartment_List[0].location_name;
            string item1 = S_Apartment_List[0].bed.ToString() + " BedRooms";
            string item2 = S_Apartment_List[0].bath.ToString() + " BathRooms";
            //string item2 = S_Apartment_List[0].bath.ToString() + " BathRooms";
            apaI1.ImageUrl = "data:Image/png;base64," + S_Apartment_List[0].imageData;
            Session["ApId0"] = S_Apartment_List[0].Apartment_id.ToString();

            Label1.Text = item1;
            Label2.Text = item2;
        

            statusT2.Text = S_Apartment_List[1].location_name;
            item1 = S_Apartment_List[1].bed.ToString() + " BedRooms";
            item2 = S_Apartment_List[1].bath.ToString() + " BathRooms";
            apaI2.ImageUrl = "data:Image/png;base64," + S_Apartment_List[1].imageData;
            Session["ApId1"] = S_Apartment_List[1].Apartment_id.ToString();


            Label3.Text = item1;
            Label4.Text = item2;
        
            statusT3.Text = S_Apartment_List[2].location_name;
            item1 = S_Apartment_List[2].bed.ToString() + " BedRooms";
            item2 = S_Apartment_List[2].bath.ToString() + " BathRooms";
            apaI3.ImageUrl = "data:Image/png;base64," + S_Apartment_List[2].imageData;
            Session["ApId2"] = S_Apartment_List[2].Apartment_id.ToString();


            Label5.Text = item1;
            Label6.Text = item2;
       


            statusT4.Text = S_Apartment_List[3].location_name;
            item1 = S_Apartment_List[3].bed.ToString() + " BedRooms";
            item2 = S_Apartment_List[3].bath.ToString() + " BathRooms";
            apaI4.ImageUrl = "data:Image/png;base64," + S_Apartment_List[3].imageData;
            Session["ApId3"] = S_Apartment_List[3].Apartment_id.ToString();


            Label7.Text = item1;
            Label8.Text = item2;
        }

       // PagingData(pageNumber, 4, totalRows);

        
    }
    protected void statusListT2_Click(object sender, BulletedListEventArgs e)
    {

    }
    protected void detailT_Click(object sender, EventArgs e)
    {

        Session["adNum"] = 1;
        Response.Redirect("~/detail.aspx");
    }
}