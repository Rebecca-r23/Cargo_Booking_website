<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="UpdatePwd.aspx.cs" Inherits="User_UpdatePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .btn {
            background-color: #FFB100;
            color: white;
        }


        .form-control {
            padding: 8px 10px;
        }

        h3 {
            letter-spacing: 1px;
        }

        .card {
            height: 370px;
            width: 500px;
        }

         .btn-1{
            background-color:rgb(255, 0, 0) !important;
            color: #fff;
        }

        .btn-1:hover {
            background-color:#000000;
            color: #fff;
        }

        .req1 {
            color: rgb(255, 0, 0);
            margin-bottom: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container  d-flex justify-content-center align-items-center flex-column mt-5 mb-5">
        <div class="card">
            <h3 class="text-center mt-4">Create a New Password For Your Account</h3>
            <label runat="server" id="errlab" class="req1"></label>
            <div class="card-body">
                <div>
                    <label>Create Password</label>
                    <asp:TextBox runat="server" ID="password" placeholder="Create Password" CssClass="form-control mt-1" MaxLength="10" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" CssClass="req1" ControlToValidate="password" Display="Dynamic"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="Regex1" runat="server" ControlToValidate="password"
                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" CssClass="req text-danger" Display="Dynamic"/>
                </div>
                <div class="mt-3">
                    <label>Confirm Password</label>
                    <asp:TextBox runat="server" ID="conPwd" placeholder="Confirm Password" CssClass="form-control mt-1" MaxLength="10" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter password" CssClass="req1" ControlToValidate="conPwd" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="password" ControlToValidate="conPwd" CssClass="req1"></asp:CompareValidator>
                </div>
                <div class="text-center mt-2">
                    <asp:Button runat="server" Text="Reset Password" ID="ResBtn" OnClick="ResBtn_Click" CssClass="btn btn-1 w-100" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

