<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="ForgotPwd.aspx.cs" Inherits="User_ForgotPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            background-image: url("Images/pexels-julie-viken-593451.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }



        .card {
            height: 400px;
            width: 500px;
        }

        .btn {
            background-color:#000000;
            color: white;
            font-weight: 400;   
        }

            .btn:hover {
                background-color:#000000;
                color: #fff;
            }

        a {
            text-decoration: underline;
            color: rgb(52, 52, 76);
        }

            a:hover {
                color: #033b4d;
            }

        .form-control {
            padding: 10px 10px;
        }

        #req1 {
            color: rgb(255, 0, 0);
        }

        .msgLabel {
            padding-top: 5px;
            color: rgb(255, 0, 0);
        }

        .Otpdiv a {
            color: black;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container d-flex justify-content-center align-items-center flex-column mt-5 mb-5">
        <div class="card" runat="server">
            <h3 class="text-center pt-4 ">Forgot Password</h3>
            <p class="text-center  pt-2" runat="server" id="Msg">No Worries,we'll send you reset instructions.</p>
            <div class="card-body" id="card" runat="server">
                <label>Email</label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control mt-2" placeholder="Enter Your Email"></asp:TextBox>
                <asp:Label ID="errMsg" runat="server" CssClass="msgLabel"></asp:Label>
                <asp:RequiredFieldValidator runat="server" ID="req1" ErrorMessage="Please Enter Email !" ControlToValidate="txtEmail" Display="Dynamic" CssClass="pt-1 px-1 text-danger"></asp:RequiredFieldValidator>
                <div class="mt-4 text-center">
                    <asp:Button runat="server" Text="Reset Password" ID="ResBtn" CssClass="btn w-100" OnClick="ResBtn_Click" />
                </div>
                <div class="text-center mt-5">
                    <span><a href="UserLogin.aspx" class="">Back To Log in</a></span>
                </div>
            </div>
            <div class="card-body">
                <div class="OtpDiv" runat="server" id="Otpdiv">
                    <label>Otp</label>
                    <asp:TextBox runat="server" ID="txtotp" placeholder="Enter Otp" CssClass="form-control mt-2"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="ReqOtp" ErrorMessage="Please Enter Otp !" ControlToValidate="txtotp" Display="Dynamic" CssClass="pt-1 px-1 text-danger"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label2" runat="server" CssClass="msgLabel"></asp:Label>
                    <div class="mt-4 text-center">
                        <asp:Button runat="server" Text="Verify Otp" ID="otpBtn" CssClass="btn w-100" OnClick="otpBtn_Click" />
                    </div>
                    <div class="mt-3">
                        <a href="ForgotPwd.aspx"><< Back</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

