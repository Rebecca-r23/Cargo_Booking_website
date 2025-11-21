using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ShipmentHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DB d1 = new DB();
        DataSet ds, ds1, ds2;

        if (Session["Email"] != null)
        {
            string query4 = "select ROW_NUMBER() OVER(ORDER BY OrderId ASC) AS Row, OrderId, UserId,ShipDate, TotalAmount, Status from ShipmentOrder where UserId='" + Session["UserId"].ToString()+ "'";

            ds = d1.GetDataSet(query4);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Repeater2.DataSource = ds;
                Repeater2.DataBind();
            }
            else
            {
                msg1.Style.Add("Color", "red");
                msg1.InnerText = "No Shipment History Found";
            }
        }
        else
        {
            
            Response.Redirect("UserLogin.aspx");
        }
    }
}