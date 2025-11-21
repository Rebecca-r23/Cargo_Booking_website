using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Payment : System.Web.UI.Page
{
    DB d1 = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

        txtamount.Text = Session["FinalOrderPay"].ToString();


    }

    protected void btnpay_Click(object sender, EventArgs e)
    {
        string Status = "Payed";
        string PaymentMode = "Card";
        string Query = "Insert Into ShipmentPayment(UserId,ToTalAmount,NameOnCard,ExpiryMonth,ExpiryYear,CvvNo,PaymentDate,PaymentStatus,PaymentMode)" +
            " values('" + Session["UserId"].ToString() + "','" + txtamount.Text + "','" + txtcardname.Text + "','" + ddlmonth.SelectedValue + "','" + ddlyear.SelectedValue + "','" + txtcvv.Text + "','" + DateTime.Now.ToShortDateString() + "','" + Status + "','" + PaymentMode + "')";
        int result = d1.ExecuteQuery(Query);
        if (result > 0)
        {

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Shipment Payment Done Successfully...')</script>");

            try
            {
                string email = Session["Email"].ToString();
                MailMessage mail = new MailMessage();
                SmtpClient smtpserver = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("typroject30@gmail.com");
                mail.To.Add(email);
                mail.Subject = "Email Form Logistics And Courier";
                mail.Body = "Your Parcel Shipment Payment is done Successfully! Thank You ,We Will Try To Deliver Your Shipment Item As Early As possible";
                smtpserver.Port = 587;
                smtpserver.EnableSsl = true;
                smtpserver.UseDefaultCredentials = false;
                smtpserver.Credentials = new System.Net.NetworkCredential("typroject30@gmail.com", "jgpxvlrwbrftuouy");
                smtpserver.Send(mail);

            }

            catch (Exception ex)
            {
                Response.Write(" Error  " + ex.ToString());
            }
            Response.Redirect("ShipmentHistory.aspx");

        }
        else
        {
            Response.Write("<script>alert('Some Error Is Occured')</script>");

        }
    }
}