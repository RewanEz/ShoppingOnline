<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="RegisteredUsers.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.RegisteredUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="172px" style="margin-left: 140px" Width="685px">
            <Columns>
                <asp:BoundField DataField="FullName" HeaderText="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:CommandField DeleteText="Block" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
