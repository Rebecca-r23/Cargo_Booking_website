<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="Shipment.aspx.cs" Inherits="User_Shipment" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #InputForm {
            min-height: 500px !important;
            width: 670px !important;
            border: 2px solid black !important;
        }

            #InputForm .fr {
                padding: 11px 15px !important;
            }

        .rt {
            background-color: black;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container d-flex justify-content-evenly mt-5">
        <div>
            <div class="card pt-4" id="InputForm">
                <h3 class="text-center">
                    <img src="https://img.icons8.com/external-flat-circular-vectorslab/68/null/external-Calculator-shopping-and-commerce-flat-circular-vectorslab.png" />
                    Create Shippment </h3>
                <div class="card-body">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    <div class="">
                        <asp:TextBox ID="Name" runat="server" CssClass="form-control" placeholder="enter your full name" ValidationGroup="v1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" CssClass="req" ControlToValidate="Name" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="Spacer20"></div>
                    <div class="Spacer10"></div>
                    <asp:Label ID="Label4" runat="server" Text="Phone number"></asp:Label>
                    <div class="">
                        <asp:TextBox ID="PhoneNo" runat="server" CssClass="form-control" placeholder="enter your phone number" ValidationGroup="v1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone number is required" CssClass="req" ControlToValidate="PhoneNo" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="Spacer20"></div>
                    <div class="Spacer20"></div>
                    <div class="">
                        <asp:Label ID="Label6" runat="server" Text="From Address"></asp:Label>
                        <asp:TextBox ID="FromAdd" runat="server" CssClass="form-control" placeholder="enter your address" ValidationGroup="v1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="From address is required" CssClass="req" ControlToValidate="FromAdd" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="Spacer20"></div>
                    <div class="Spacer20"></div>
                    <div class="">
                        <asp:Label ID="Label7" runat="server" Text="To Address"></asp:Label>
                        <asp:TextBox ID="ToAdd" runat="server" CssClass="form-control" placeholder="enter your address" ValidationGroup="v1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="To address is required" CssClass="req" ControlToValidate="ToAdd" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="Spacer20"></div>
                    <div class="Spacer20"></div>
                    <div class="">
                        <asp:Label ID="Label5" runat="server" Text="From City"></asp:Label>
                        <!--<asp:TextBox ID="FromCity" runat="server" CssClass="form-control fr" placeholder="enter from city"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="City name is required" CssClass="req" ControlToValidate="FromCity" Display="Dynamic"></asp:RequiredFieldValidator>-->
                         <div>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="text-capitalize dropdown" ValidationGroup="v1">
                        </asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server"
                        ErrorMessage="City name is required" ControlToValidate="DropDownList2"
                        ForeColor="Red" ValidationGroup="v1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="Spacer20"></div>
                    <asp:Label ID="Label2" runat="server" Text="To City"></asp:Label>
                    <div class="">
                         <asp:DropDownList ID="DropDownList3" runat="server" CssClass="text-capitalize dropdown" ValidationGroup="v1">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="City name is required" CssClass="req" ControlToValidate="DropDownList3" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="Spacer20"></div>
                    <asp:Label ID="Label3" runat="server" Text="tell us more about your parcel" CssClass="text-capitalize mt-2"></asp:Label>
                    <div>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="text-capitalize dropdown" ValidationGroup="v1">
                        </asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"
                        ErrorMessage="please choose valid option" ControlToValidate="DropDownList1"
                        ForeColor="Red" ValidationGroup="v1"></asp:RequiredFieldValidator>
                    <div class="Spacer20"></div>
                    <div class="Spacer20"></div>
                </div>
            </div>

        </div>
        <div>
            <table class="table table-bordered mt-4 mx-5">
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
                                <asp:TextBox runat="server" ID="txt1" CssClass="form-control" placeholder="1" ValidationGroup="v1"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Max Value is 30" CssClass="req" ControlToValidate="txt1" MaximumValue="30" MinimumValue="1" Type="Integer" Display="Dynamic"> ValidationGroup="v1"</asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="No of package required" CssClass="req" ControlToValidate="txt1" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                        <td>
                            <div class="mt-5">
                                <div class="d-flex justify-content-center align-items-center">
                                    <asp:TextBox runat="server" ID="txt2" CssClass="form-control" ValidationGroup="v1"></asp:TextBox>
                                    <span class="mx-1">Kg.</span>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Weight is required" CssClass="req" ControlToValidate="txt2" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt2"
                                    ErrorMessage="Enter Numbers Only" ValidationExpression="^\d+$" CssClass="req" Display="Dynamic" ValidationGroup="v1"></asp:RegularExpressionValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Max Value is 100" CssClass="req" ControlToValidate="txt2" MaximumValue="100" MinimumValue="1" Type="Integer" ValidationGroup="v1"></asp:RangeValidator>
                            </div>
                        </td>
                        <td>
                            <div class="">
                                <asp:TextBox runat="server" ID="txtLength" CssClass="form-control mb-2" placeholder="Length" ValidationGroup="v1">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Length is required" CssClass="req" ControlToValidate="txtLength" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                <asp:TextBox runat="server" ID="txtWidth" CssClass="form-control mb-2" placeholder="Width" ValidationGroup="v1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Width is required" CssClass="req" ControlToValidate="txtWidth" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                <asp:TextBox runat="server" ID="txtHeight" CssClass="form-control" placeholder="Height" ValidationGroup="v1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Height is required" CssClass="req" ControlToValidate="txtHeight" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                </tbody>

            </table>
            <div class="text-center d-flex justify-content-center mx-2">
                <div class="mx-3">
                    <asp:Button ID="Button2" runat="server" Text="Add Package" OnClick="Button2_Click" CssClass="mb-2 rt" ValidationGroup="v1"/>
                </div>
                <div class="mx-3 mb-3">
                    <asp:Button ID="Button1" runat="server" Text="Save and Proceed" CssClass="rt" OnClick="Button1_Click"/>
                </div>
            </div>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No Of Package</th>
                                <th>Weight Per Package</th>
                                <th>Dimension Per Package</th>
                            </tr>
                        </thead>
                        <tbody class="text-center">
                            <tr>
                                <td><%#Eval("NoOfPackage") %></td>
                                <td><%#Eval("WeightPerPackage") %></td>
                                <td>
                                    <p><%#Eval("length") %>Length</p>
                                    <p><%#Eval("width") %>Width</p>
                                    <p><%#Eval("height") %>Height</p>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    </div>
                   
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </div>
</asp:Content>

