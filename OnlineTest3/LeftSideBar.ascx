<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftSideBar.ascx.cs" Inherits="OnlineTest3.WebUserControl1" %>
<script src="Scripts/bootstrap.js"></script>
<link href="Content/bootstrap.css" rel="stylesheet" />
<link href="Content/bootstrap-theme.css" rel="stylesheet" />
<link href="CssStyle/Global.css" rel="stylesheet" />

<asp:Panel id="SideBar" CssClass="borderStyle leftSideBarStyle" runat="server">

    <ul class="nav navbar-default">
        <li class="active"><asp:HyperLink ID="ViewUsersDetails" Text="View Users' Details" runat="server" NavigateUrl="~/UsersDetails.aspx" /></li>
        <li><asp:HyperLink ID="HyperLink1" Text="View Test Results" runat="server" NavigateUrl="~/ViewTestResults.aspx" /></li>
    
    </ul>



</asp:Panel>