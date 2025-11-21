<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="ShipmentHistory.aspx.cs" Inherits="User_ShipmentHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-4 mb-4" id="OrderCard">
        <div class="card">
            <div class="card-header" style="text-align: center;">
                <h4 class="pt-1" runat="server" id="msg1">Your Shipment History</h4>
            </div>
            <div class="card-body">
                <div class="col-lg-12">
                    <div class="row">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <HeaderTemplate>
                                <table class="table table-bordered">
                                    <th>Shipment_order_ID</th>
                                    <th>Order_Date</th>
                                    <th>Total_Amount</th>
                                    <th>Status</th>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("OrderId") %></td>
                                    <td><%# Eval("ShipDate") %></td>
                                    <td><%# Eval("TotalAmount") %></td>
                                    <td><%# Eval("Status") %></td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

