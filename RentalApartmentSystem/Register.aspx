<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style4
        {
            width: 78%;
            margin-left: 160px;
        }
        .auto-style3 {
            height: 25px;
            width: 213px;
        }
        .auto-style1 {
            height: 25px;
            width: 245px;
        }
        .auto-style12 {
            height: 25px;
            width: 244px;
        }
        .style5
        {
            height: 25px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 828px; width: 1356px; background-color: #CCCCFF;">
            <div style="height: 66px; font-family: Arial; font-size: xx-large; background-color: #0066CC;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Apartment Rental<div style="height: 50px; margin-top: 18px; background-color: #0000FF;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="44px" Text="Home" Width="129px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Height="44px" Text="Post Add" Width="134px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Height="44px" Text="All Adds" Width="129px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="44px" Text="Login" Width="129px" OnClick="Button4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="height: 721px; background-color: #666699; color: #00FFFF; font-family: Arial; font-size: small; background-image: url('Images/Slide5.JPG');" id="StatusText">
        Create Your Own Account Here<br />
        <br />
        Already Have An Account :<br />
        <br />
        <table class="style4">
            <tr>
                <td class="auto-style3">
                    User Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="UserNameT" runat="server" Width="229px" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Mobile No</td>
                <td class="auto-style1" id="Tmobile">
                    <asp:TextBox ID="MobileT" runat="server" Width="229px" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Email</td>
                <td class="auto-style1">
                    <asp:TextBox ID="EmailT" runat="server" Width="229px" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Password</td>
                <td class="auto-style1">
                    <asp:TextBox ID="PasswordT" runat="server" Width="229px" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Confirm Password</td>
                <td class="auto-style1">
                    <asp:TextBox ID="PasswordTC" runat="server" Width="229px" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            </table>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="StatusT" runat="server"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Tsubmit" runat="server" OnClick="Tsubmit_Click" Text="Submit" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
