<%@ Page Title="" Language="C#" MasterPageFile="~/RootSite.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineTest3.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadRegion" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyRegion" runat="server">
    <form id="formRegister" runat="server">
        <div id="LoginRegion" style="text-align:center; margin-top:50px;">
            <label id="lblUserName">User Name:</label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtUserName" runat="server" />
            <br />
            <br />
            <label id="lblPassword">Password:</label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
            <br />
            <br />
            <label id="lblConfirmPassword">Confirm Password:</label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" />
            <br />
            <br />
            <label id="lblEmail">Email:</label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server" />
            <br />
            <br />
            <label id="lblGender">Gender:</label>
            &nbsp;&nbsp;
            <asp:RadioButton ID="rdMale" Text="Male" runat="server" GroupName="Gender"/>
            &nbsp;
            <asp:RadioButton ID="rdFemail" Text="Female" runat="server" GroupName="Gender"/>
            <br />
            <br />
            <label id="lblMobile">Mobile:</label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtMobile" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"/>
            <br />
        </div>
    </form>
</asp:Content>
