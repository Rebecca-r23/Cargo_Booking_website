<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="User_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        h3 {
            font-weight: bold;
        }

        .card-1{
            min-height: 650px !important;
            width:500px !important;
            box-shadow: rgba(0, 0, 0, 0.12) 0px 1px 3px, rgba(0, 0, 0, 0.24) 0px 1px 2px;
        }

            .card .inputDiv img {
                position: relative;
                left: 30px;
            }

        label {
            position: relative;
            left: 28px;
        }


        .form-control-1 {
            margin-left: -10px;
            margin-right: 20px;
            width: 570px !important;
            padding: 13px 10px 13px 50px !important;
        }

            .form-control-1:hover {
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
            color: red;
        }

        .btn-1 {
            font-weight: 600;
            background-color: black;
            color: #fff !important;
            padding: 100px 0px;
            margin-left: 1px;
            font-size: 18px;
            font-weight: 500;
        }

            .btn-1:hover {
                background-color: #11101d;
                color: #fff;
                border: 1px solid #11101d;
            }

        h3 {
            font-weight: 500 !important;
        }

        .link {
            font-size: 19px;
            font-weight: 500;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container d-flex justify-content-center align-items-center mt-2">
        <div class="card mt-4 card-1">
            <h3 class="text-center pt-4 text-capitalize">Create Your Account
                <img src="https://img.icons8.com/external-flatart-icons-outline-flatarticons/64/null/external-login-web-development-flatart-icons-outline-flatarticons.png" />
            </h3>
            <label class="text-danger" runat="server" id="errmsg"></label>
            <div class="card-body">
                <div class="row">
                    <div class="">
                        <div class="d-flex align-items-center inputDiv">
                            <span>
                                <img src="../Images/user.png" height="28" width="28"/>
                            </span>
                            <asp:TextBox runat="server" placeholder="Enter your full name" CssClass="form-control  form-control-1" ID="Fname" ValidationGroup="v1"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Please enter your name" ControlToValidate="Fname" CssClass="text-danger req" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div>
                    <div class="spacer30"></div>
                    <div>
                        <div class="d-flex align-items-center inputDiv">
                            <span>
                                <img src="Images/email%20(3).png" />
                            </span>
                            <asp:TextBox runat="server" placeholder="Enter your email" CssClass="form-control  form-control-1" ID="Email" TextMode="Email" ValidationGroup="v1"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator runat="server" ID="req1" ErrorMessage="Please enter Email" ControlToValidate="Email" CssClass="text-danger req" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                            Display="Dynamic" ErrorMessage="Invalid email address" CssClass="req" ValidationGroup="v1"/>
                    </div>
                    <div>
                        <div class="spacer30"></div>
                        <div class="d-flex align-items-center email inputDiv">
                            <span>
                                <img src="Images/padlock.png" />
                            </span>
                            <asp:TextBox runat="server" placeholder="Create your password" CssClass="form-control form-control-1" ID="Pwd" MaxLength="10" TextMode="Password" ValidationGroup="v1"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger req" ControlToValidate="Pwd" ErrorMessage="Please create Password" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="Regex1" runat="server" ControlToValidate="Pwd"
                            ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" CssClass="req" Display="Dynamic" ValidationGroup="v1"/>
                    </div>
                    <div class="spacer30"></div>
                    <div>
                        <div class="spacer30"></div>
                        <div class="d-flex align-items-center email inputDiv">
                            <span>
                                <img src="Images/password%20(2).png" />
                            </span>
                            <asp:TextBox runat="server" placeholder="Confirm password" CssClass="form-control  form-control-1" ID="ConfPwd" MaxLength="10" TextMode="Password" ValidationGroup="v1"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger req" ControlToValidate="Pwd" ErrorMessage="Please confirm password" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="Pwd" ControlToValidate="ConfPwd" CssClass="req" Display="Dynamic" ValidationGroup="v1"></asp:CompareValidator>
                    </div>
                    <div>
                        <div class="spacer30"></div>
                        <div class="d-flex align-items-center email inputDiv">
                            <span>
                                <img src="Images/phone.png" />
                            </span>
                            <asp:TextBox runat="server" placeholder="Enter your phone number" CssClass="form-control form-control-1" ID="PhoneNum" MaxLength="10"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger req" ControlToValidate="PhoneNum" ErrorMessage="Please enter phone Number" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="PhoneNum" ErrorMessage="Invalid Phone Number" ValidationExpression="[0-9]{10}" Display="Dynamic" CssClass="req" ValidationGroup="v1"></asp:RegularExpressionValidator>
                    </div>
                    <div class="spacer10"></div>
                    <div class="mt-4">
                        <asp:Button runat="server" Text="Sign Up" CssClass="btn w-100 py-2 btn-1" ID="LogBtn" OnClick="LogBtn_Click" ValidationGroup="v1"/>
                    </div>
                    <div class="spacer15"></div>
                    <div class="spacer20"></div>
                    <div class="text-center text-uppercase">
                        <p>OR</p>
                    </div>
                    <div class="spacer10"></div>
                    <div class="text-center mt-3 mb-4">
                        Already Have an Account? <a href="UserLogin.aspx" class="text-dark link">Sign In </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

