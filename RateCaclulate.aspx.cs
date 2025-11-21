using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["Email"] != null)
        {
            Name.Text =  Session["Username"].ToString().Trim();
            PhoneNo.Text = Session["PhoneNo"].ToString();

        }
        else
        {
            Response.Redirect("UserLogin.aspx");
        }
    }

    public Double Rate_Calculation(String from,string to)
    {
        double distance = 0;
        double Rate = 0;
        double additional_charges = 0;

        DB d1 = new DB();
        string query4 = "select Distance from location where FromName = '" +FromCity.Text+"' and ToName='"+ToCity.Text+"'";

       DataSet ds = d1.GetDataSet(query4);
        if (ds.Tables[0].Rows.Count > 0)
        {
            distance = Convert.ToDouble(ds.Tables[0].Rows[0]["Distance"]);

        }


        string query5 = "select Base_Rate,Additional_Charges from dbo.Rate";

        DataSet ds1 = d1.GetDataSet(query5);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Rate = Convert.ToDouble(ds1.Tables[0].Rows[0]["Base_Rate"]);

            additional_charges = Convert.ToDouble(ds1.Tables[0].Rows[0]["Additional_Charges"]);

        }

        double final_amount = (distance * Rate)+additional_charges;

        if(final_amount ==0)
        {
            return 0;
        }

        return final_amount;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        DB d1 = new DB();
        int res = 0;
        string name = Name.Text;
        string mobile = PhoneNo.Text;
        string address = Address.Text;
        string from_city=FromCity.Text;
        string to_city=ToCity.Text;
        string dates = DateTxt.Text;    
        string no_parcel = txt1.Text;
        string weight = txt2.Text; string volume = (Int32.Parse(txtLength.Text) * Int32.Parse(txtWidth.Text) * Int32.Parse(txtHeight.Text)).ToString();


        Double final_rate = Rate_Calculation("", "");

        if (final_rate == 0)
        {

            String message = "We can not calculate charges this time :" + final_rate.ToString();
            /*Response.Write("<script>alert(" + message + ")</script>");*/
            msg.Text = message;

        }
        else
        {
            String message = "Your Approx shipping Charges is :" + final_rate.ToString();
            /*Response.Write("<script>alert(" + message + ")</script>");*/
            msg.Text = message;

        }


        string query = "INSERT INTO dbo.User_Rate_Calculation(name,mobile,address,dates,no_parcel,wieght,Volume,from_city,to_city,charges) VALUES('" + name+"',"+mobile+",'"+address+"','"+dates+"',"+no_parcel+","+weight+","+volume+",'"+from_city+"','"+to_city+"','"+final_rate+"')";
        res = d1.ExecuteQuery(query);
        if (res > 0)
        {
         

           
        }
        else
        {
            Response.Write("<script>alert('Failed to Insert')</script>");
        }
    }


    


}