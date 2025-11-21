<%@ Page Title="" Language="C#" MasterPageFile="~/Agent/AgentMaster.master" AutoEventWireup="true" CodeFile="AgentLogin.aspx.cs" Inherits="Agent_AgentLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        body {
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            font-family: 'Poppins', sans-serif !important;
           background: linear-gradient(white,#F6FF83);
        }

        h3 {
            font-weight: bold;
        }

        .card {
            min-height: 390px;
            width: 500px;
            /*box-shadow: rgba(0, 0, 0, 0.02) 0px 1px 3px 0px, rgba(27, 31, 35, 0.15) 0px 0px 0px 1px;*/
            box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
        }

            .card .inputDiv img {
                position: relative;
                left: 30px;
            }

        label {
            position: relative;
            left: 28px;
        }


        .form-control {
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

        .btn-1{
            font-weight: 600;
            background-color:  #11101d !important;
            color: #fff;
            padding: 70px 0px;
            margin-left: 1px;
            font-size: 18px;
            font-weight: 500;
            border-radius:10px;
        }

            .btn-1:hover {
                background-color:#11101d !important;
                color: #fff;
            }

        h3 {
            font-weight: 500 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container d-flex justify-content-center align-items-center mt-5">
        <div class="card">
            <h3 class="text-center pt-3 text-capitalize">
                    <img src="https://img.icons8.com/external-filled-line-andi-nur-abdillah/64/null/external-Agent-real-estate-(filled-line)-filled-line-andi-nur-abdillah.png"/>Agent Login
            </h3>
            <label class="text-danger" runat="server" id="errmsg"></label>
            <div class="card-body">
                <div>
                    <div class="d-flex align-items-center inputDiv">
                        <span>
                            <img src="email%20(4).png" />
                        </span>
                        <asp:TextBox runat="server" placeholder="Enter your email" CssClass="form-control" ID="Email" TextMode="Email"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" ID="req1" ErrorMessage="Please Enter Email" ControlToValidate="Email" CssClass="text-danger req" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <div class="spacer30"></div>
                    <div class="d-flex align-items-center email inputDiv">
                        <span>
                            <img src="rotation-lock.png" />
                        </span>
                        <asp:TextBox runat="server" placeholder="Enter your password" CssClass="form-control" ID="Pwd" MaxLength="10" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" CssClass="text-danger req" ControlToValidate="Pwd" ErrorMessage="Please Enter Password" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="spacer30"></div>
                <div class="spacer10"></div>
                <div class="mt-4">
                    <asp:Button runat="server" Text="Login" CssClass="btn-1 w-100 py-2" ID="LogBtn" OnClick="LogBtn_Click" />
                </div>
                <div class="spacer15"></div>
                <div class="spacer20"></div>
            </div>
        </div>
    </div>
    <script src="../Scripts/bootstrap.min.js"></script>

</asp:Content>

