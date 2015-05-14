<%@ Page Title="" Language="C#" MasterPageFile="~/RootSite.Master" AutoEventWireup="true" CodeBehind="UsersDetails.aspx.cs" Inherits="OnlineTest3.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadRegion" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyRegion" runat="server">
    <div class="container">
        <form runat="server">
            <asp:GridView ID="gvUsers" runat="server" AllowPaging="true" PageSize="8" 
                      CssClass="Grid" AlternatingRowStyle-CssClass="alt"
                      HorizontalAlign="Center" PagerStyle-CssClass="pgr">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox runat="server" ID="chkbox" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br /><br />
            <div class="box">
                <asp:Button ID="btnDelete" Text="Delete" runat="server" onclick="btnDelete_Click"/>

            </div>
        </form>
    </div>
</asp:Content>

