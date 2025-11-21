using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton1.Visible = false;

        if (Session["Email"] != null)
        {
            LinkButton1.Visible = true;
            logtxt.Visible = false;
        }
        else
        {
           
        }
    }

    protected void Rate_Click(object sender, EventArgs e)
    {
        Response.Redirect("services.aspx");
    }

    protected void Login_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserLogin.aspx");
    }



    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session.Remove("Email");
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Home.aspx");
        LinkButton1.Visible=false;
        logtxt.Visible=true;
    }
}
