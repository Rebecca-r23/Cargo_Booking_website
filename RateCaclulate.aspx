<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="RateCaclulate.aspx.cs" Inherits="User_Services" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #InputForm {
            min-height: 500px !important;
            width: 670px !important;
            border: 2px solid #000000 !important;
        }

            #InputForm .fr {
                padding: 11px 15px !important;
            }

        .rt {
            background-color: #000000;
            padding: 7px 30px;
            color: #fff;
            border: 1px solid #ffffff;
            border-radius: 5px;
            font-size: 18px;
            font-weight: 500;
        }

        #InputForm .dropdown {
            width: 100%;
            padding: 10px 10px;
            margin-top: 4px;
            background-color: #efeff5;
            border: 1px solid #efeff5;
        }

        .req {
            color: #ff0000;
        }

        #InputForm .form-control {
            padding: 9px 11px;
        }

        .linkBtn:hover {
            color: #ffd800;
        }

        .msg {
            font-weight: bold;
            font-size: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container d-flex justify-content-center align-items-center mt-5 mb-5">
        <div class="card pt-4" id="InputForm">
            <h3 class="text-center">
                <img src="https://img.icons8.com/external-flat-circular-vectorslab/68/null/external-Calculator-shopping-and-commerce-flat-circular-vectorslab.png" />
                Calculate Shipping Rates</h3>
            <div class="card-body">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <div class="">
                    <asp:TextBox ID="Name" runat="server" CssClass="form-control" placeholder="enter your full name"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" CssClass="req" ControlToValidate="Name" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="Spacer20"></div>
                <div class="Spacer10"></div>
                <asp:Label ID="Label4" runat="server" Text="Phone number"></asp:Label>
                <div class="">
                    <asp:TextBox ID="PhoneNo" runat="server" CssClass="form-control" placeholder="enter your phone number" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone number is required" CssClass="req" ControlToValidate="PhoneNo" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="Spacer20"></div>
                <div class="Spacer20"></div>
                <div class="">
                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                    <asp:TextBox ID="Address" runat="server" CssClass="form-control" placeholder="enter your address"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address is required" CssClass="req" ControlToValidate="Address" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="Spacer20"></div>
                <div class="Spacer20"></div>
                <div class="">
                    <asp:Label ID="Label5" runat="server" Text="From"></asp:Label>
                    <asp:TextBox ID="FromCity" runat="server" CssClass="form-control fr" placeholder="enter from city"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator4" runat="server" ErrorMessage="City name is required" CssClass="req" ControlToValidate="FromCity" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="Spacer20"></div>
                <asp:Label ID="Label2" runat="server" Text="To"></asp:Label>
                <div class="">
                    <asp:TextBox ID="ToCity" runat="server" CssClass="form-control fr" placeholder="enter to city"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator5" runat="server" ErrorMessage="City name is required" CssClass="req" ControlToValidate="ToCity" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="Spacer20"></div>
                <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label>
                <div class="">
                    <asp:TextBox ID="DateTxt" runat="server" CssClass="form-control fr" placeholder="enter date" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Date  is required" CssClass="req" ControlToValidate="DateTxt" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="Spacer20"></div>
                <div class="Spacer20"></div>

                <asp:Label ID="Label3" runat="server" Text="tell us more about your parcel" CssClass="text-capitalize mt-2"></asp:Label>
                <div>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="text-capitalize dropdown">
                        <asp:ListItem Value="your packaging">others</asp:ListItem>
                        <asp:ListItem Value="your packaging">others</asp:ListItem>
                        <asp:ListItem Value="your packaging">others</asp:ListItem>
                        <asp:ListItem Value="your packaging">others</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="Spacer20"></div>
                <div class="Spacer20"></div>
                <table class="table table-bordered mt-4">
                    <thead>
                        <tr class="text-center">
                            <th>No. Of Package
                                <br />
                                <span>(max 30)</span></th>
                            <th>Weight Per Package<br />
                                <span>(max 100kg.)</span></th>
                            <th>Dimesion Per Package<br />
                                <span>(LxWxH)</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="mt-5">
                                    <asp:TextBox runat="server" ID="txt1" CssClass="form-control" TextMode="number" placeholder="1"></asp:TextBox>
                                    <asp:RangeValidator ValidationGroup="rate_calculation" ID="RangeValidator1" runat="server" ErrorMessage="Max Value is 30" CssClass="req" ControlToValidate="txt1" MaximumValue="30" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                                </div>
                            </td>
                            <td>
                                <div class="mt-5">
                                    <div class="d-flex justify-content-center align-items-center">
                                        <asp:TextBox runat="server" ID="txt2" CssClass="form-control"></asp:TextBox>
                                        <span class="mx-1">Kg.</span>
                                    </div>
                                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Weight is required" CssClass="req" ControlToValidate="txt2" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ValidationGroup="rate_calculation" ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt2"
                                        ErrorMessage="Enter Numbers Only" ValidationExpression="^\d+$" CssClass="req" Display="Dynamic"></asp:RegularExpressionValidator>
                                    <asp:RangeValidator ValidationGroup="rate_calculation" ID="RangeValidator2" runat="server" ErrorMessage="Max Value is 100" CssClass="req" ControlToValidate="txt2" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                                </div>
                            </td>
                            <td>
                                <div class="">
                                    <asp:TextBox runat="server" ID="txtLength" CssClass="form-control mb-2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Length is required" CssClass="req" ControlToValidate="txt2" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" ID="txtWidth" CssClass="form-control mb-2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Weight is required" CssClass="req" ControlToValidate="txt2" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" ID="txtHeight" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ValidationGroup="rate_calculation" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Height is required" CssClass="req" ControlToValidate="txt2" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="text-center mt-4">
                    <asp:Button ID="Button1" ValidationGroup="rate_calculation" runat="server" Text="Save and Calculate" CssClass="rt" OnClick="Button1_Click" />
                </div>
                <div class="text-center mt-2 mb-2">
                    <asp:Label ID="msg" runat="server" Text="" CssClass="msg"></asp:Label>
                </div>
                <div class="text-center">
                    <asp:Button ID="Button2" runat="server" Text="" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

