<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RegistrationForm.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font-size:x-large" align="center"><b>Student Register</b></div>
    <table class="w-100">
        <tr>
            <td style="width: 89px; height: 46px"></td>
            <td id="Label1" style="width: 303px; height: 46px">StudentID</td>
            <td style="height: 46px">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 89px; height: 51px"></td>
            <td id="Label2" style="width: 303px; height: 51px">Full Name</td>
            <td style="height: 51px">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 89px; height: 44px;"></td>
            <td id="Label3" style="width: 303px; height: 44px;">Age</td>
            <td style="height: 44px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 89px">&nbsp;</td>
            <td id="Label4" style="width: 303px">Address</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Austrailia</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>Franch</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 89px">&nbsp;</td>
            <td style="width: 303px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px">&nbsp;</td>
            <td style="width: 303px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CC33FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="38px" OnClick="Button1_Click" Text="Register" Width="112px" style="border:none; border-radius:10px"/>
            </td>
        </tr>
        <tr>
            <td style="width: 89px">&nbsp;</td>
            <td style="width: 303px">&nbsp;</td>
            <td>
                 &nbsp;</td>
            </tr>
        <tr>
    <td style="width: 89px">&nbsp;</td>
    <td style="width: 303px">&nbsp;</td>
    <td>
         <asp:GridView ID="GridView1" runat="server" Height="167px" Width="536px">
         </asp:GridView>
            </td>
    </tr>
    </table>
    <br />
</asp:Content>
