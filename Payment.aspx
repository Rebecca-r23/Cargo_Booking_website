<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="User_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .cardiv {
            border: 1px solid red !important;
        }

        .btnpay {
            padding: 7px 40px;
            background-color: #ff0000;
            color: #ffffff;
            font-size: 18px;
        }

            .btnpay:hover {
                color: #fff;
                background-color: red;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-5">
        <div id="payment">
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-6">
                    <div class="card cardiv">
                        <div class="card-body">
                            <div class="card-title">
                                <h2 class="text-center">Card Payment</h2>
                            </div>
                            <div class="card-body">
                                <div class="form-group mb-4">
                                    <label>Amount To Be Paid</label>
                                    <asp:TextBox ID="txtamount" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group mb-4">
                                    <label>Name on Card</label>
                                    <asp:TextBox ID="txtcardname" CssClass="form-control" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" CssClass="req text-danger" ControlToValidate="txtcardname" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group mb-4">
                                    <label>Card Number</label>
                                    <asp:TextBox ID="txtcardnumber" MaxLength="16" placeholder="XXXX-XXXX-XXXX-XXXX" CssClass="form-control" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Card number is required" CssClass="req text-danger" ControlToValidate="txtcardnumber" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <label>Expiry Month</label>
                                            <asp:DropDownList ID="ddlmonth" CssClass="form-control mr-1" runat="server">
                                                <asp:ListItem Value="0">Month</asp:ListItem>
                                                <asp:ListItem>Jan</asp:ListItem>
                                                <asp:ListItem>Feb</asp:ListItem>
                                                <asp:ListItem>Mar</asp:ListItem>
                                                <asp:ListItem>Apr</asp:ListItem>
                                                <asp:ListItem>May</asp:ListItem>
                                                <asp:ListItem>Jun</asp:ListItem>
                                                <asp:ListItem>Jul</asp:ListItem>
                                                <asp:ListItem>Aug</asp:ListItem>
                                                <asp:ListItem>Sep</asp:ListItem>
                                                <asp:ListItem>Oct</asp:ListItem>
                                                <asp:ListItem>Nov</asp:ListItem>
                                                <asp:ListItem>Dec</asp:ListItem>
                                            </asp:DropDownList>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Month is required" CssClass="req text-danger" ControlToValidate="ddlmonth" Display="Dynamic" ValidationGroup="v1" InitialValue="0"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-lg-4">
                                            <label>Expiry Year</label>
                                            <asp:DropDownList ID="ddlyear" CssClass="form-control ml-1" runat="server">
                                                <asp:ListItem Value="">Year</asp:ListItem>
                                                <asp:ListItem>2023</asp:ListItem>
                                                <asp:ListItem>2024</asp:ListItem>
                                                <asp:ListItem>2026</asp:ListItem>
                                                <asp:ListItem>2027</asp:ListItem>
                                                <asp:ListItem>2028</asp:ListItem>
                                                <asp:ListItem>2029</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Month is required" CssClass="req text-danger" ControlToValidate="ddlmonth" Display="Dynamic" ValidationGroup="v1" InitialValue="0"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-lg-4 col-md-offset-2">
                                            <div class="row">
                                                <label>CVV Number</label>
                                                <asp:TextBox ID="txtcvv" CssClass="form-control" placeholder="XXX" MaxLength="3" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Cvv number is required" CssClass="req text-danger" ControlToValidate="txtcvv" Display="Dynamic" ValidationGroup="v1" InitialValue="0"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mt-5 text-center">
                                    <asp:Button ID="btnpay" CssClass="btn btnpay btn-block" runat="server" Text="Pay" OnClick="btnpay_Click" ValidationGroup="v1"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                </div>
            </div>

        </div>

    </div>


</asp:Content>

