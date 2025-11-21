using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Shipment : System.Web.UI.Page
{

    DB d1 = new DB();
    DatTab d2 = new DatTab();
    DataTable dab = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] != null)
        {

            Name.Text = Session["Username"].ToString();
            PhoneNo.Text = Session["PhoneNo"].ToString();
        }
        else
        {
            Response.Redirect("UserLogin.aspx");
        }

        if (!IsPostBack)
        {
            bind_DropDownList();
            BindFromCity();
            BindToCity();
        }




    }

    private void BindFromCity()
    {
        DataSet ds = new DataSet();
        ds = d1.GetDataSet("select * from location");
        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataValueField = "id";
        DropDownList2.DataTextField = "FromName";
        DropDownList2.DataBind();
        DropDownList2.DataSource = ds;
        DropDownList2.Items.Insert(0, new ListItem("--Select From City--", ""));
    }

    private void BindToCity()
    {
        DataSet ds = new DataSet();
        ds = d1.GetDataSet("select * from location");
        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataValueField = "id";
        DropDownList3.DataTextField = "ToName";
        DropDownList3.DataBind();
        DropDownList3.DataSource = ds;
        DropDownList3.Items.Insert(0, new ListItem("--Select To City--", ""));
    }



    private void bind_DropDownList()
    {
        DataSet ds = new DataSet();
        ds = d1.GetDataSet("select * from CategoryDetails");
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataValueField = "Categoryid";
        DropDownList1.DataTextField = "Name";
        DropDownList1.DataBind();
        DropDownList1.DataSource = ds;
        DropDownList1.Items.Insert(0, new ListItem("None", ""));
    }





    protected void Button2_Click(object sender, EventArgs e)

    {
        string NoOfPack = txt1.Text;
        string PackPerWeight = txt2.Text;
        string length = txtLength.Text;
        string width = txtWidth.Text;
        string heigt = txtHeight.Text;
        add_tocart(Convert.ToInt32(NoOfPack), Convert.ToDouble(PackPerWeight), Convert.ToDouble(PackPerWeight),
            Convert.ToDouble(length), Convert.ToDouble(heigt));


    }



    public void add_tocart(int NoofPack, double PackPerWeight, double length, double width, double height)
    {


        int flg = 0;
        if (Session["CurrentTable2"] == null)
        {
            dab = d2.CreateDataTable();
        }
        else
        {
            flg = 1;
            dab = (DataTable)Session["CurrentTable2"];

        }

        d2.AddRecord(NoofPack, PackPerWeight, length, width, height, dab);

        Session["CurrentTable2"] = dab;
        Repeater1.DataSource = dab;
        Repeater1.DataBind();






    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Add")
        {

            string NoOfPackage = txt1.Text;
            double WeightPerPackage = Convert.ToDouble(txt2.Text);
            double heig = Convert.ToDouble(txtHeight.Text);
            double Weig = Convert.ToDouble(txtWidth.Text);
            double leng = Convert.ToDouble(txtLength.Text);
            add_tocart(Convert.ToInt32(NoOfPackage), WeightPerPackage, leng, Weig, leng);

        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {



        int result = 0;
        Random rnd = new Random();
        int OrderID = rnd.Next(10000000, 99999999);
        Session["OrderId"] = OrderID;
        String ShipDate = System.DateTime.Now.ToLongDateString();
        String User_id = Session["UserId"].ToString();
        String Shipment_Status = "pending";
        String Order_update_date = System.DateTime.Now.ToLongDateString();


        string Amount = "1000";

        string ToAddress = ToAdd.Text;
        string FromAddress = FromAdd.Text;
        string FromC = DropDownList2.SelectedValue;
        string ToC = DropDownList3.SelectedValue;



        string Query = "Insert into ShipmentOrder(OrderId,UserId,ShipDate,TotalAmount,Status,FromCity,ToCity,FromAddress,ToAddress,TypeOfPackage) " +
            "values('" + OrderID + "','" + User_id + "','" + ShipDate + "','" + Amount + "','" + Shipment_Status + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + FromAddress + "','" + ToAddress + "','"+DropDownList1.SelectedValue+"')";

        result = d1.ExecuteQuery(Query);
        if (Session["CurrentTable2"] != null)
        {

            DataTable da = (DataTable)Session["CurrentTable2"];

            if (da.Rows.Count > 0)
            {
                for (int i = 0; i < da.Rows.Count; i++)
                {
                    // insert into purchase order item

                    String NOPackage = da.Rows[i]["NoOfPackage"].ToString();
                    double WeightPer = Convert.ToDouble(da.Rows[i]["WeightPerPackage"]);
                    double Lenght = Convert.ToDouble(da.Rows[i]["length"]);
                    double width = Convert.ToDouble(da.Rows[i]["width"]);
                    double height = Convert.ToDouble(da.Rows[i]["height"]);
                    string status = "Pending";



                    string query = "Insert into ShipmentOrderItem(OrderId,NoOfPackage,WeightPerPackage,Height,Length,Width,PackageStatus) values('" + Session["OrderId"].ToString() + "','" + NOPackage + "','" + WeightPer + "','" + height + "','" + Lenght + "','" + width + "','" + status + "')";

                    d1.ExecuteQuery(query);
                    Session["FinalOrderPay"] = "1000";

                    Response.Redirect("Payment.aspx");


                }
                Session.Remove("CurrentTable2");

                    
                ClientScriptManager CSM = Page.ClientScript;

                string strconfirm = "<script>if(window.confirm('Your Shipment is Placed Successfully Please Complete your payment')){window.location.href='Payment.aspx'}</script>";
                CSM.RegisterClientScriptBlock(this.GetType(), "Ok   ", strconfirm, false);

            }
        }
        else
        {
            Response.Write("<script>alert('Add some Shipping itmes in your buckets')</script>");
        }


    }
}
