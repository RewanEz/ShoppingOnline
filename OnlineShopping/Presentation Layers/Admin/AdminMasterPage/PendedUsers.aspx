<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation Layers/Admin/AdminMasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PendedUsers.aspx.cs" Inherits="OnlineShopping.Presentation_Layers.Admin.AdminMasterPage.PendedUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="156px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 146px" Width="748px">
            <Columns>
                <asp:BoundField DataField="FullName" HeaderText="User Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:ButtonField Text="Approve" />
                <asp:ButtonField Text="Reject" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
