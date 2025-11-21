using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Register : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LogBtn_Click(object sender, EventArgs e)
    {
        string EmailId = Email.Text;
        string Password = Pwd.Text;
        string Phone = PhoneNum.Text;
        DB d1 = new DB();
        int res = 0;


        string Query = "Insert Into dbo.User_details(Email_Id,Password,Mobile_No,First_Name) values('"+EmailId+"','"+Password+"','"+Phone+"','"+Fname.Text+"')";
        res = d1.ExecuteQuery(Query);
        if (res > 0)
        {
            Response.Write("<script>alert('Account is Successfully Created')<script>");
            Response.Redirect("UserLogin.aspx");
        }

        else
        {
            errmsg.InnerText = "Some Error is Occured";
        }


    }
}