using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class Searched_Apartment
{
        public int Apartment_id { get; set; }
        public int district_id { get; set; }
        public string location_name { get; set; }
        public string bed { get; set; }
        public string bath { get; set; }
        public string price { get; set; }
        public int person { get; set; }
        public string imageData { get; set; }
        public string thana { get; set; }
        public string apratSize { get; set; }
        public string mobile { get; set; }
        public string email { get; set; }
        public string statusbox { get; set; }
        
}

public class ApartmentDataAccessLayer
{
   

	
		public static List<Searched_Apartment> GetApartmentInfo(int pageIndex, int pageSize, out int totalRows)
       {
        List<Searched_Apartment> S_Apartment_List = new List<Searched_Apartment>();
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\CSE L-3T-2\Software Development\Final GUI\App_Data\regDatabase.mdf");
        SqlCommand cmd = new SqlCommand("GetApartments_by_PageIndex_and_pageSize",conn);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlParameter paramStartIndex = new SqlParameter();
        paramStartIndex.ParameterName = "@PageIndex";
        paramStartIndex.Value = pageIndex;
        cmd.Parameters.Add(paramStartIndex);

        SqlParameter paramMaximumRows = new SqlParameter();
        paramMaximumRows.ParameterName = "@pageSize";
        paramMaximumRows.Value = pageSize;
        cmd.Parameters.Add(paramMaximumRows);

        SqlParameter paramoutTotalRows = new SqlParameter();
        paramoutTotalRows.ParameterName = "@TotalRows";
        paramoutTotalRows.Direction = ParameterDirection.Output;
        paramoutTotalRows.SqlDbType = SqlDbType.Int;
        cmd.Parameters.Add(paramoutTotalRows);

        conn.Open();
        SqlDataReader reader1 = cmd.ExecuteReader();
        while(reader1.Read())
        {
            Searched_Apartment apt = new Searched_Apartment();
            apt.Apartment_id = Convert.ToInt32(reader1["ApartmentId"]);

            apt.district_id = Convert.ToInt32(reader1["DId"]);
            apt.location_name = reader1["AreaName"].ToString();
            apt.bed = reader1["BedRoomNo"].ToString();
            apt.bath = reader1["BathRoomNo"].ToString();
            apt.person = Convert.ToInt32(reader1["ParsonId"]);
            apt.price = reader1["Price"].ToString();

            byte[] bytes  = (byte[])reader1["ImageData"];
            apt.imageData = Convert.ToBase64String(bytes);

            apt.thana = reader1["Thana"].ToString();
            apt.apratSize = reader1["ApartmentSize"].ToString();
            apt.mobile = reader1["MobileNo"].ToString();
            apt.email = reader1["Email"].ToString();
            apt.statusbox = reader1["StatusBox"].ToString();

            S_Apartment_List.Add(apt);
        }

        reader1.Close();
        totalRows = (int)cmd.Parameters["@TotalRows"].Value;
        return S_Apartment_List;
    }

}

