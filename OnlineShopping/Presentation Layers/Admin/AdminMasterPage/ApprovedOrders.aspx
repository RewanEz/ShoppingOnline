<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ApprovedOrders.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.ApprovedOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="FullName" HeaderText="User Name" />
            <asp:TemplateField HeaderText="Order Items">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("productName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="OrderItemDropDownList" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField Text="Delivered" />
        </Columns>
    </asp:GridView>
</asp:Content>
