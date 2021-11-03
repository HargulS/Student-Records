<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="font-size:x-large; height: 97px;" align="center" > 
        <br />
        Student Information<br />
        
    </div>

&nbsp;<table class="nav-justified">
    <tr>
        <td style="width: 351px; height: 20px;"></td>
        <td class="modal-sm" style="width: 125px; height: 20px;">Student ID</td>
        <td style="height: 20px">
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
            <asp:Button ID="Button5" runat="server" style="margin-left:10px" Text="Get Record" Width="126px" OnClick="Button5_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 351px; height: 22px;"></td>
        <td class="modal-sm" style="width: 125px; height: 22px;">Student Name</td>
        <td style="height: 22px">
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0" AutoPostBack="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 351px">&nbsp;</td>
        <td class="modal-sm" style="width: 125px">Address</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="126px" AutoPostBack="True">
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 351px">&nbsp;</td>
        <td class="modal-sm" style="width: 125px">Age</td>
        <td class="modal-sm" style="width: 125px">
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0" AutoPostBack="True"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 351px">&nbsp;</td>
        <td class="modal-sm" style="width: 125px">Contact</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0" AutoPostBack="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 351px">&nbsp;</td>
        <td class="modal-sm" style="width: 125px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 351px">&nbsp;</td>
        <td class="modal-sm" style="width: 125px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="126px" />
            <asp:Button ID="Button2" runat="server" style="margin-left:10px" Text="Update" Width="126px" OnClick="Button2_Click1" />
            <asp:Button ID="Button3" runat="server" style="margin-left:10px" OnClientClick="return confirm('Are you sure you want to Delete this record?')" Text="Delete" Width="126px" OnClick="Button3_Click1" />
            <asp:Button ID="Button4" runat="server" style="margin-left:10px" Text="Search" Width="126px" OnClick="Button4_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 351px; height: 20px;"></td>
        <td class="modal-sm" style="width: 125px; height: 20px;"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 351px; height: 20px;">&nbsp;</td>
        <td class="modal-sm" style="width: 125px; height: 20px;">&nbsp;</td>
        <td style="height: 20px">
            <asp:GridView ID="GridView1" runat="server" Width="640px">
            </asp:GridView>
        </td>
    </tr>
</table>

</asp:Content>
