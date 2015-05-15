<%@ Page Title="" Language="C#" MasterPageFile="~/RootSite.Master" AutoEventWireup="true" CodeBehind="ViewTestResults.aspx.cs" Inherits="OnlineTest3.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadRegion" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyRegion" runat="server">
    <div class="container">
        <form runat="server">
            <asp:GridView ID="gvUsers" runat="server" AllowPaging="true" PageSize="8" 
                      CssClass="Grid" AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox runat="server" ID="chkbox" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br /><br />

        </form>
    </div>
</asp:Content>
