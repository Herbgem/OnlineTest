<%@ Page Title="" Language="C#" MasterPageFile="~/RootSite.Master" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="OnlineTest3.WebForm9" %>
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
                        <HeaderTemplate>
                            <asp:CheckBox ID="HeaderChkBox" runat="server" AutoPostBack="true" OnCheckedChanged="HeaderChkBox_CheckedChanged" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox runat="server" ID="chkbox" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br /><br />
            <div class="box">
                <asp:Button ID="AddSubject" Text="Add Subject" runat="server" onclick="AddSubject_Click" CssClass="BtnInline"/>
            </div>
            <br /><br />
            <div id="AddArea" runat="server" visible="false">
                <label>Add Subject:</label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtSubject" runat="server" />
                <asp:Button ID="BtnSummitAdd" Text="Summit" runat="server" OnClick="BtnSummitAdd_Click" />
            </div>
        </form>
    </div>
</asp:Content>
