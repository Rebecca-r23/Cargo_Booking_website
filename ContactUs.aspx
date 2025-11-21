<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="User_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .btn-1 {
            margin-top: 100px;
            border: 1px solid red;
            background-color: #ff0000;
            color: #ffffff;
            padding: 13px 20px !important;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container mt-5">

        <h4 classs=" head2">FOR EMAIL AND CHAT SUPPORT</h4>
    </div>

    <div class="container">
        <div class="card hero">
            <div class=" card-body  d-flex justify-content-around align-items-around m-4">
                <div class=" row">
                    <div class=" col-xl-12">
                        <h3 class=" head3">Like And Follow Us On</h3>
                    </div>

                </div>
                <div class="row">
                    <div class=" col-xl-4">
                        <img src="images/icons8-instagram-48%20(1).png" />
                        <span class=" text-white">Instagram</span>
                    </div>

                    <div class=" col-xl-4">
                        <img src="images/icons8-facebook-48%20(1).png" />
                        <span class=" text-white">Facebook </span>
                    </div>

                    <div class=" col-xl-4">
                        <img src="images/icons8-linkedin-circled-48.png" />
                        <span class=" text-white">@courDeliver</span>
                    </div>

                    <div class=" col-xl-4">
                        <img src="images/icons8-twitter-squared-48.png" />
                        <span class=" text-white">@Delivercourie</span>
                    </div>

                    <div class=" col-xl-4">
                        <img src="Images/icons8-gmail-logo-48%20(1).png" />
                        <span class=" text-white">courie@gmail.com </span>
                    </div>

                </div>

            </div>
        </div>
    </div>


    <div class="container">
        <div class="card boka mt-4">
            <div class=" card-body ">
                <div class=" row">
                    <div class=" col-xl-4">
                        <h3 class="mx-2">HELP CENTER</h3>
                        <h4>Need assistance?</h4>
                        <p class="para">We’re happy to help! Choose a mode of request type and we’ll be in touch (please include your details - shimpment order number and registered phone no)</p>
                    </div>

                    <div class=" col-xl-8">
                        <asp:TextBox ID="txtname" runat="server" CssClass=" form-control w-75 p-3 bod" placeholder="Full Name"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter your name" ControlToValidate="txtname" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtemail" runat="server" CssClass=" form-control w-75 p-3 bod" placeholder="Enter Your Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter your email" ControlToValidate="txtemail" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtphone" runat="server" CssClass=" form-control w-75 p-3 bod mt-3" placeholder="Enter Your Phone number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter your phone number" ControlToValidate="txtphone" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" placeholder="Please Select option" CssClass=" form-control w-75 p-3 bod mt-1">
                            <asp:ListItem Value="0">Please Select option</asp:ListItem>
                            <asp:ListItem> Shipping and Tracking isssue</asp:ListItem>
                            <asp:ListItem>Delivery Package Issue</asp:ListItem>
                            <asp:ListItem>General Feedbacks</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please select a option" ControlToValidate="txtname" InitialValue="0" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <textarea id="txtmsg" cols="20" rows="2" placeholder="Describe your Issue" class="form-control w-75 p-3 bod mt-3" runat="server"></textarea>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please fill this field" ControlToValidate="txtmsg" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <div class="mt-3">
                            <asp:Button ID="Button1" runat="server" Text="Submit Request" CssClass=" p-3 m-2 mt-3 w-25 btn-1" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

