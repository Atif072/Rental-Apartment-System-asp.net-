<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostAdd.aspx.cs" Inherits="PostAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 142%;
            height: 588px;
            margin-left: 159px;
        }
        .style2
        {
            width: 283px;
        }
        .style3
        {
            width: 272px;
        }
        .style4
        {
            width: 100%;
            margin-left: 161px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div style="height: 1276px; width: 1356px; background-color: #CCCCFF;">
            <div style="height: 66px; font-family: Arial; font-size: xx-large; background-color: #0066CC;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Apartment Rental<div style="height: 50px; margin-top: 18px; background-color: #0000FF;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="44px" Text="Home" Width="129px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Height="44px" Text="Post Add" Width="134px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Height="44px" Text="All Adds" Width="129px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="44px" Text="Login / Signup" Width="129px" OnClick="Button4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="height: 1138px; background-color: #666699; color: #00FFFF; width: 1356px; font-family: Arial; font-size: small; font-weight: 700; font-style: italic; background-image: url('Images/Slide6.JPG');">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox13" runat="server" Enabled="False" EnableTheming="False" Font-Bold="True" Font-Names="Aharoni" Font-Overline="True" Font-Size="XX-Large" ForeColor="Red" Height="55px" OnTextChanged="TextBox13_TextChanged" style="margin-bottom: 0px" ValidateRequestMode="Disabled" ViewStateMode="Disabled" Width="588px">POST YOUR ADVERTISEMENT HERE</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        <br />
        APARTMENT INFO :<br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    DISTRICT</td>
                <td class="style2">
                    <asp:DropDownList ID="districtT" runat="server" Height="24px" style="margin-left: 0px; margin-top: 0px" Width="241px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="DId">
                                    <asp:ListItem>Insert Area</asp:ListItem>
                                    <asp:ListItem>Polashi</asp:ListItem>
                                    <asp:ListItem>Dhanmondi</asp:ListItem>
                                    <asp:ListItem>Gulshan</asp:ListItem>
                                    <asp:ListItem>Banani</asp:ListItem>
                                    <asp:ListItem>Mohakhali</asp:ListItem>
                                    <asp:ListItem>Mogbazar</asp:ListItem>
                                    <asp:ListItem>Kalyanpur</asp:ListItem>
                                    <asp:ListItem>Mirpur</asp:ListItem>
                                    <asp:ListItem>Uttara</asp:ListItem>
                                    <asp:ListItem>Azimpur</asp:ListItem>
                                    <asp:ListItem>HazariBag</asp:ListItem>
                                    <asp:ListItem>Mohammadpur</asp:ListItem>
                                    <asp:ListItem>Shamoly</asp:ListItem>
                                    <asp:ListItem>Agargaon</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Ab</asp:ListItem>
                                    <asp:ListItem>b</asp:ListItem>
                                    <asp:ListItem>c</asp:ListItem>
                                    <asp:ListItem>d</asp:ListItem>
                                    <asp:ListItem>e</asp:ListItem>
                                    <asp:ListItem>f</asp:ListItem>
                                    <asp:ListItem>g</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:regConnectionString %>" SelectCommand="SELECT * FROM [District]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    THANA</td>
                <td class="style2">
                    <asp:TextBox ID="thanaT" runat="server" Width="228px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    AREA</td>
                <td class="style2">
                    <asp:TextBox ID="areaT" runat="server" Width="228px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    SIZE OF APARTMENT</td>
                <td class="style2">
                    <asp:TextBox ID="size_aptT" runat="server" Width="224px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    NO.OF BEDROOMS</td>
                <td class="style2">
                    <asp:TextBox ID="bedT" runat="server" Width="230px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    NO. OF WASHROOMS</td>
                <td class="style2">
                    <asp:TextBox ID="bathT" runat="server" style="margin-right: 0px" 
                        Width="231px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    PRICE</td>
                <td class="style2">
                    <asp:TextBox ID="priceT" runat="server" style="margin-right: 0px" 
                        Width="230px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="NEGOTIABLE" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="NON NEGOTIABLE" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2" aria-hidden="False">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        CONTACT INFO :<br />
        <br />
        <table class="style4">
            <tr>
                <td class="style2">
                    MOBILE NO.</td>
                <td>
                    <asp:TextBox ID="mobileNoT" runat="server" Width="230px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    EMAIL
                </td>
                <td>
                    <asp:TextBox ID="emailT" runat="server" Width="230px" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        Any Important Information Regardig Apartment :<br />
        <asp:TextBox ID="textT" runat="server" Height="121px" Width="567px" OnTextChanged="textT_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; upload image
    <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="submitT" runat="server" Text="Submit" Width="149px" OnClick="Button5_Click" />
    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
