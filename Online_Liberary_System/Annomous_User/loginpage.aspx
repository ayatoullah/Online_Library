<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AnnonousUser.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="Online_Liberary_System.Annomous_User.loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <pre style="height: 210px">














</pre>
        <form id="form1" runat="server">
    <table style="width: 100%; height: 309px;">
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 182px">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="20px" Font-Strikeout="False" ForeColor="Black" Text="E-mail :" Width="129px"></asp:Label>
            </td>
            <td class="auto-style1" style="width: 214px">
                <asp:TextBox ID="txt_mail" runat="server" Height="28px" Width="161px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rf_uname" runat="server" ControlToValidate="txt_mail" ErrorMessage="please enter the First Name" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="Invalid Mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Mail</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 182px">
                <asp:Label ID="Label2" runat="server" Font-Size="20px" ForeColor="Black" Text="Password :" Width="131px"></asp:Label>
            </td>
            <td class="auto-style1" style="width: 214px">
                <asp:TextBox ID="txt_upass" runat="server" TextMode="Password" Height="30px" Width="161px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rf_psss" runat="server" ControlToValidate="txt_upass" ErrorMessage="please enter the Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 182px">&nbsp;</td>
            <td class="auto-style1" style="width: 214px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 418px">&nbsp;</td>
            <td style="width: 182px">&nbsp;</td>
            <td class="auto-style1" style="width: 214px">
                <asp:Button ID="btn_login2" runat="server" OnClick="btn_login_Click" Text="Login" />
            </td>
            <td>
                <asp:Label ID="lbl_status" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
            </form>

</asp:Content>
