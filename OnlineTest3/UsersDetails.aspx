<%@ Page Title="" Language="C#" MasterPageFile="~/RootSite.Master" AutoEventWireup="true" CodeBehind="UsersDetails.aspx.cs" Inherits="OnlineTest3.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadRegion" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyRegion" runat="server">
    <div>
        <form runat="server">
            <div style="left:50%">
                <asp:GridView ID="gvUsers" runat="server" AllowPaging="true" PageSize="8" 
                          CssClass="Grid" AlternatingRowStyle-CssClass="alt"
                          HorizontalAlign="Center" PagerStyle-CssClass="pgr" />   
            </div>
        </form>
    </div>
</asp:Content>

