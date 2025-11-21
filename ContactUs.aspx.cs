using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ContactUs : System.Web.UI.Page
{
    DB d1 = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = txtemail.Text;
        string name = txtname.Text;
        string msg = txtmsg.InnerText;
        string drop = DropDownList1.SelectedValue;
        string Num=txtphone.Text;   
       
        string Query = "Insert into [dbo].[tbl_contactDetails](Name,EmailId,Mobile,Issue,Description) values('"+name+"','"+email+"','"+Num+"','"+drop+"','"+msg+"')";

        int result = d1.ExecuteQuery(Query);

        if (result > 0)
        {
            Response.Write("<script>alert('Your Form is Submitted Successfully')</script>");
            Clear();

        }
        else
        {
            Response.Write("<script>alert('Some Error is Occured')</script>");
        }

    }

    public void Clear()
    {
        txtemail.Text = txtmsg.InnerText = DropDownList1.SelectedValue = txtphone.Text = txtemail.Text =txtname.Text ="";
    }
}