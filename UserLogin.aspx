<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="User_UserLoginNew" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet' />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        h3 {
            font-weight: bold;
        }

        .card {
            min-height: 460px;
            width: 500px;
           
            box-shadow: rgba(0, 0, 0, 0.02) 0px 1px 3px 0px, rgba(27, 31, 35, 0.15) 0px 0px 0px 1px;
        }

            .card .inputDiv img {
                position: relative;
                left: 30px;
            }

        label {
            position: relative;
            left: 28px;
        }


        .form-control-1{
            margin-left: -10px;
            margin-right: 20px;
            width: 570px !important;
            padding: 10px 10px 10px 50px !important;
        }

            .form-control:hover {
                border: 1px solid #f2ccff !important;
            }

        .spacer5 {
            margin-top: 5px;
        }

        .spacer10 {
            margin-top: 10px;
        }

        .spacer15 {
            margin-top: 10px;
        }

        .spacer20 {
            margin-top: 20px;
        }

        .spacer30 {
            margin-top: 30px;
        }
        label {
            margin-bottom: 2px;
        }

        a {
            color: black;
        }

            a:hover {
                color: #00d9c5;
            }

        .req {
            position: relative;
            left: 32px;
        }

        p {
        }


        .btn-1{
            font-weight: 600;
            background-color:black !important;
            color: #fff;
            padding: 100px 0px;
            margin-left: 1px;
            font-size: 18px;
            font-weight: 400;
        }

            .btn-1:hover {
                background-color: #11101d;
                color: #fff;
                border: 1px solid #11101d;
            }

        h3 {
            font-weight: 500 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container d-flex justify-content-center align-items-center mt-5">
        <div class="card mt-4">
            <h3 class="text-center pt-4 text-capitalize">Sign In
                   <img src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/null/external-login-web-store-flaticons-lineal-color-flat-icons-3.png"/>
            </h3>
            <label class="text-danger" runat="server" id="errmsg"></label>
            <div class="card-body">
                <div>
                    <label>Email</label>
                    <div class="d-flex align-items-center inputDiv">
                        <span>
                            <img src="Images/email%20(3).png" />
                        </span>
                        <asp:TextBox runat="server" placeholder="Enter your email" CssClass="form-control form-control-1" ID="Email" TextMode="Email" ValidationGroup="v1"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" ID="req1" ErrorMessage="Please Enter Email" ControlToValidate="Email" CssClass="text-danger req" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <div class="spacer30"></div>
                    <label>Password</label>
                    <div class="d-flex align-items-center email inputDiv">
                        <span>
                            <img src="Images/padlock.png" />
                        </span>
                        <asp:TextBox runat="server" placeholder="Enter your password" CssClass="form-control form-control-1" ID="Pwd" MaxLength="10" TextMode="Password" ValidationGroup="v1"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" CssClass="text-danger req" ControlToValidate="Pwd" ErrorMessage="Please Enter Password" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                </div>
                <div class="spacer30"></div>
                <div class="spacer10"></div>
                <div class="mt-4">
                    <asp:Button runat="server" Text="Sign in" CssClass="btn w-100 py-2 btn-1" ID="LogBtn" OnClick="LogBtn_Click" ValidationGroup="v1"/>
                </div>
                <div class="spacer15"></div>
                <div class="spacer20"></div>
                <div class="text-center text-uppercase">
                    <p>OR</p>
                    <div></div>
                </div>
                <div class="spacer15"></div>
                <div class="spacer15"></div>
                <div class="spacer10"></div>
                <div class="text-center mt-4">
                    Don't have an account? <a href="Register.aspx" class="text-dark">Sign up today </a>
                </div>
                <div class="text-center mt-3">
                    Forgot Password?<a href="ForgotPwd.aspx" class="mx-2 text-dark">Reset Now</a>
                </div>
                <div class="text-center mt-3">
                    <a href="../Admin/AdminLogin.aspx" class="text-dark">Admin Login</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

