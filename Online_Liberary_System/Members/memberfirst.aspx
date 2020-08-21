<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Members.Master" AutoEventWireup="true" CodeBehind="memberfirst.aspx.cs" Inherits="Online_Liberary_System.Members.UpdatePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <form id="form1" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br />
        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
                <td style="width: 223px">&nbsp;</td>
                <td style="width: 149px">&nbsp;</td>
                <td style="width: 350px">&nbsp;</td>
                <td style="width: 447px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 48px"></td>
                <td style="width: 223px; height: 48px;">
                    <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                </td>
                <td style="width: 149px; height: 48px;">
                    <asp:TextBox ID="oldPass_txt" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 350px; height: 48px;">
                    <asp:Label ID="lbl_status" runat="server"></asp:Label>
                </td>
                <td style="width: 447px; height: 48px;"></td>
            </tr>
            <tr>
                <td style="height: 40px"></td>
                <td style="width: 223px; height: 40px;">
                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                </td>
                <td style="width: 149px; height: 40px;">
                    <asp:TextBox ID="newPass_txt" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 350px; height: 40px;">
                    <asp:RequiredFieldValidator ID="newPass_vld" runat="server" ControlToValidate="newPass_txt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 447px; height: 40px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 38px"></td>
                <td style="width: 223px; height: 38px;">
                    Confirm Password</td>
                <td style="width: 149px; height: 38px;">
                    <asp:TextBox ID="confPass_txt" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 350px; height: 38px;">
                    <asp:RequiredFieldValidator ID="cnfrmPass_vld" runat="server" ControlToValidate="confPass_txt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="confirm_pass" runat="server" ControlToCompare="newPass_txt" ControlToValidate="confPass_txt" ErrorMessage="not same" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td style="width: 447px; height: 38px;">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td>&nbsp;</td>
                <td style="width: 223px">
                    &nbsp;</td>
                <td style="width: 149px">&nbsp;</td>
                <td style="width: 350px">&nbsp;</td>
                <td style="width: 447px">&nbsp;</td>
            </tr>
           
            <tr>
                <td>&nbsp;</td>
                <td class="text-center" style="width: 223px">
                    <asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click" />
                </td>
                <td style="width: 149px">
                    <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" />
                </td>
                <td style="width: 350px">&nbsp;</td>
                <td style="width: 447px">&nbsp;</td>
            </tr>
           
        </table>
 <br /><br /><br /><br /><br />
    </form>
</asp:Content>
