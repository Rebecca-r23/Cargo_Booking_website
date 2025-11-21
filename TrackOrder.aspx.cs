using Microsoft.Owin.Security.DataHandler.Serializer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_TrackOrder : System.Web.UI.Page
{
    DB d1 = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        {

        }
        else
        {
            Response.Redirect("UserLogin.aspx");
        }
    }

    /*public void BindDataList()
    {
        DataSet ds = new DataSet();
        ds = d1.GetDataSet("Select * from ShipmentOrder");

        if (ds.Tables[0].Rows.Count > 0)
        {

            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();

        }
    }*/

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        string Query = "Select * from ShipmentOrder where OrderId='" + TextBox1.Text + "'";
        ds = d1.GetDataSet(Query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            /* string PackageStatus = ds.Tables[0].Rows[0]["PackageStatus"].ToString();
             string OrderId= ds.Tables[0].Rows[0]["OrderId"].ToString();
             string Amount ="";
 */
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();


        }
        else
        {
            msg.Text = "Please Check Your Order Id";
        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}