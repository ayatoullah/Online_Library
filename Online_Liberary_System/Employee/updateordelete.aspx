<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Employee.Master" AutoEventWireup="true" CodeBehind="updateordelete.aspx.cs" Inherits="Online_Liberary_System.Employee.updateordelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <pre>











  </pre>
        <form id="form1" runat="server">
                <asp:DataList ID="member_dl" runat="server" CellPadding="4" Width="972px" OnItemCommand="member_dl_ItemCommand" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 28%">
                            </td>
                            <td style="width: 14%">
                                <asp:Label ID="label1" runat="server" Text="First Name"></asp:Label>
                            </td>
                            <td style="width: 14%">
                                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                            </td>
                            <td style="width: 14%">
                                <asp:Label ID="Label7" runat="server" Text="E-mail"></asp:Label>
                            </td>
                            <td style="width: 14%">
                                <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                            </td>
                            <td style="width: 14%">
                                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 14%;height: 40px;">
                                <asp:LinkButton ID="delete_lbtn" runat="server" CommandArgument='<%# Eval("user_id") %>' CommandName="delete" Font-Size="20px">Delete</asp:LinkButton>
                            </td>
                            <td style="width: 14%;height: 40px;">
                                <asp:LinkButton ID="update_lbtn" runat="server" CommandArgument='<%# Eval("user_id") %>' CommandName="update" Font-Size="20px" ForeColor="Blue">Update</asp:LinkButton>
                            </td>
                            <td style="width: 14%;height: 40px">
                                &nbsp;<asp:Label ID="fname_lbl" runat="server" Text='<%# Eval("fName") %>'></asp:Label>
                            </td>
                            <td style="width: 14%;height: 40px">
                                <asp:Label ID="lname_lbl" runat="server" Text='<%# Eval("lName") %>'></asp:Label>
                            </td>
                            <td style="width: 14%">
                                <asp:Label ID="email_lbl" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            </td>
                            <td style="width: 14%;height: 40px">
                                <asp:Label ID="phone_lbl" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                            </td>
                            <td style="width: 14%;height: 40px">
                                <asp:Label ID="address_lbl" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
    </form>
<pre>








</pre>
</asp:Content>
