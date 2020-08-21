<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addmem.aspx.cs" Inherits="Online_Liberary_System.Employee.addmem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%">
   <tr>
       
       <td><asp:Label ID="label1" runat="server" Text="First Name"></asp:Label></td>
       <td><asp:TextBox ID="fname_txt" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="rf_fname" runat="server" ControlToValidate="fname_txt" ErrorMessage="please enter the First Name" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
       </td>
   </tr>
    <tr>
        
        <td><asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
        <td><asp:TextBox ID="lname_txt" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="rf_lname" runat="server" ControlToValidate="lname_txt" ErrorMessage="please enter the Last Name" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        
        <td><asp:Label ID="Label3" runat="server" Text="Address"></asp:Label></td>
        <td><asp:TextBox ID="address_txt" runat="server"></asp:TextBox>       
            <asp:RequiredFieldValidator ID="rf_address" runat="server" ControlToValidate="address_txt" ErrorMessage="please enter the Address" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
</td>
    </tr>
    <tr>       
               
        <td><asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label></td>
        <td><asp:TextBox ID="phone_txt" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rf_phone" runat="server" ControlToValidate="phone_txt" ErrorMessage="please enter the Phone" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>       
               
        <td><asp:Label ID="Label5" runat="server" Text="Intial Password"></asp:Label></td>
        <td><asp:TextBox ID="intialpass_txt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf_pass" runat="server" ControlToValidate="intialpass_txt" ErrorMessage="please enter the Password" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
        </td>
    </tr>
<tr>       
        <td>&nbsp;</td><td><asp:Button ID="addmem_btn" runat="server" Text="Add Member" OnClick="addmem_btn_Click" ValidationGroup="a" /></td>
    </tr>
<tr>       
        <td colspan="2">
            <asp:DataList ID="member_dl" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="972px">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 62px">
                                <asp:LinkButton ID="delete_lbtn" runat="server" CommandArgument='<%# Eval("user_id") %>' CommandName="delete">Delete</asp:LinkButton>
                            </td>
                            <td style="width: 62px">
                                <asp:LinkButton ID="update_lbtn" runat="server" CommandArgument='<%# Eval("user_id") %>' CommandName="update" OnClick="update_lbtn_Click">Update</asp:LinkButton>
                            </td>
                            <td>
                                <asp:Label ID="label1" runat="server" Text="First Name"></asp:Label>
                                &nbsp;:<asp:Label ID="fname_lbl" runat="server" Text='<%# Eval("fName") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                                :<asp:Label ID="lname_lbl" runat="server" Text='<%# Eval("lName") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                                &nbsp;:<asp:Label ID="address_lbl" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                                &nbsp;:<asp:Label ID="phone_lbl" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
        </td>
    </tr>
</table>

        </div>
    </form>
</body>
</html>
