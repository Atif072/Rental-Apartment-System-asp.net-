<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllAddsView.aspx.cs" Inherits="AllAddsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style7
        {
            width: 100%;
            margin-left: 172px;
        }
        .style8
        {
            width: 354px;
        }
        .style9
        {
            width: 96px;
        }
        .auto-style1 {
            width: 354px;
            height: 245px;
        }
        .auto-style2 {
            width: 96px;
            height: 245px;
        }
        .auto-style3 {
            height: 245px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 135px; width: 1356px; background-color: #CCCCFF; margin-bottom: 0px;">
            <div style="height: 66px; font-family: Arial; font-size: xx-large; background-color: #0066CC;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Apartment Rental<div style="height: 48px; margin-top: 18px; background-color: #0000FF; width: 1367px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="44px" Text="Home" Width="129px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Height="44px" Text="Post Add" Width="134px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Height="44px" Text="All Adds" Width="129px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="44px" Text="Login / Signup" Width="129px" OnClick="Button4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
            </div>
        </div>
    <div>
    
    <div style="height: 1310px; background-color: #666699; color: #00FFFF; margin-left: 0px; width: 1369px; background-image: url('Images/Slide3.JPG');">
        ALL ADVERTISEMENTS :<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style7">
            <tr>
                <td class="style8">
                    <asp:Image ID="apaI1" runat="server" Height="239px" Width="344px" />
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    <div style="height: 235px; margin-top: 0px; width: 735px;" id="apartmentInfoT1">
&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="statusT1" runat="server" Text="Status Of Apartment"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Button ID="detailT" runat="server" OnClick="detailT_Click" Text="Details" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Image ID="apaI2" runat="server" Height="251px" 
                        ImageUrl="~/Images/image_thumb[4].png" Width="341px" />
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td id="apartmentInfoT2">
                        <asp:Label ID="statusT2" runat="server" Text="Status Of Apartment"></asp:Label>
                        <br />
&nbsp;&nbsp;
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;
                        <br />
                        <br />
                        <asp:Button ID="detailT0" runat="server" OnClick="detailT_Click" Text="Details" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Image ID="apaI3" runat="server" 
                        ImageUrl="~/Images/J119053291.road-view.636053l.jpg" Width="336px" />
                </td>
                <td class="auto-style2">
                    </td>
                <td id="apartmentInfoT3" class="auto-style3">
                        <asp:Label ID="statusT3" runat="server" Text="Status Of Apartment"></asp:Label>
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="detailT1" runat="server" OnClick="detailT_Click" Text="Details" />
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Image ID="apaI4" runat="server" Height="269px" 
                        ImageUrl="~/Images/ResizedImage600450-morphett-View-02.jpg" Width="339px" />
                </td>
                <td class="style9">
                    &nbsp;</td>
                <td id="apartmentInfoT4">
                        <asp:Label ID="statusT4" runat="server" Text="Status Of Apartment"></asp:Label>
                    <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="detailT2" runat="server" OnClick="detailT_Click" Text="Details" style="margin-left: 19px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        PAGES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="PagingT" runat="server" AutoPostBack="True" OnSelectedIndexChanged="PagingT_SelectedIndexChanged"
            >
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    
    </div>
    </form>
</body>
</html>
