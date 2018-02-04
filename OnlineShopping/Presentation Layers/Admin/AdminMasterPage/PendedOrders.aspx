<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PendedOrders.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.PendedOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="173px" style="margin-left: 147px" Width="704px">
        <Columns>
            <asp:TemplateField HeaderText="User Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FullName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FullName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Items">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("productID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="OrderItemDropDownList" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField Text="Approve" />
            <asp:ButtonField Text="Reject" />
        </Columns>
    </asp:GridView>
</asp:Content>
