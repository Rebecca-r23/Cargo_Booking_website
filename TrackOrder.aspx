<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="TrackOrder.aspx.cs" Inherits="User_TrackOrder" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .card-1 {
            border: 2px solid #000000 !important;
            min-height: 240px !important;
            min-width: 500px !important;
        }

        .btn-1 {
            background-color: #000000;
            color: #ffffff;
            padding: 10px 18px !important;
            border-radius: 10px;
        }

        .form-control-1 {
            padding: 15px 12px !important;
        }

        .lab {
            font-size: 18px;
        }

        #ProdCard {
            border: 1px solid red !important;
            width: 400px !important;
        }

            #ProdCard .DelBtn {
                background-color: #ff0000;
                color: #ffffff;
                border: 1px solid #ffffff;
                padding: 7px 15px;
                border-radius: 8px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container d-flex justify-content-center align-items-center" style="min-height: 50vh;">
        <div class="card card-1 mt-3 mb-3">
            <div class="card-body mt-3">
                <asp:Label ID="Label1" runat="server" Text="Track Your Parcel"></asp:Label>
                <div class="mt-1">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your order id" CssClass="form-control form-control-1" ValidationGroup="v1"></asp:TextBox>
                </div>
                <asp:Label ID="msg" runat="server" Text="" CssClass="mx-2 text-danger lab"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter order id" Display="Dynamic" ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="v1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Please enter valid order id" 
                    ValidationExpression="^\d+$" ValidationGroup="v1" CssClass="text-danger"></asp:RegularExpressionValidator>
                <div class="text-center mt-2">
                    <asp:Button ID="Button1" runat="server" Text="Check Parcel Status" CssClass="btn-1" OnClick="Button1_Click" ValidationGroup="v1" />
                </div>
            </div>
        </div>

    </div>
    <div class="container d-flex justify-content-evenly align-items-center">
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div class="card d-flex flex-column" id="ProdCard">
                    <p></p>
                    <div class="card-body d-flex flex-column text-center mb-5">
                        <div class="pt-2">
                            <h5><span>OrderId: </span><%#Eval("OrderId")%></h5>
                            <h5><span>Parcel Status: </span><%#Eval("status")%></h5>
                            <div class="mt-4 mb-b">
                                <asp:LinkButton ID="LinkButton1" CommandArgument='<%# Eval("OrderId")%>' CommandName="add_cart" runat="server" CssClass="DelBtn text-capitalize text-decoration-none" ToolTip="Cancel Package Shipment">Cancel Package Shipment</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>

