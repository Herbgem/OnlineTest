<%@ Page Title="" Language="C#" MasterPageFile="~/RootSite.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="OnlineTest3.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadRegion" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyRegion" runat="server">
    <form id="formLogin" runat="server">
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
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
            &nbsp;
            <a id="hlRegister" href="Register.aspx">Not a user? Register now!</a>
            <br />
            <br />
            <asp:Label ID="lblWarning" runat="server" ForeColor="Red"/>
        </div>
    </form>
</asp:Content>
