<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center">
                <asp:Button ID="Button1" runat="server" Text="+Add New Category" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <div class="text-center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-left: 255px" Width="480px">
                        <Columns>
                            <asp:TemplateField HeaderText="Category Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("categoryName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("categoryName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
