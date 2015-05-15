<%@ Page Title="" Language="C#" MasterPageFile="~/RootSite.Master" AutoEventWireup="true" CodeBehind="UserTests.aspx.cs" Inherits="OnlineTest3.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadRegion" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyRegion" runat="server">
    <div class="container">
        <form runat="server">
            <asp:GridView ID="gvUsers" runat="server" AllowPaging="true" PageSize="8" 
                      CssClass="Grid" AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr">
            </asp:GridView>
        </form>
    </div>
</asp:Content>
