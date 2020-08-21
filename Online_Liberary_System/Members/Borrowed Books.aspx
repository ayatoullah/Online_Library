<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Members.Master" AutoEventWireup="true" CodeBehind="Borrowed Books.aspx.cs" Inherits="Online_Liberary_System.Members.Borrowed_Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <form id="form1" runat="server">
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="nav-justified">
            <tr>
                <td style="width: 81px">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="year_ddl" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="month_ddl" runat="server">
                    </asp:DropDownList>
                    <asp:Button ID="search_btn" runat="server" OnClick="search_btn_Click" Text="search" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 81px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 81px">&nbsp;</td>
                <td rowspan="3">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                <asp:ListView ID="ListView1" runat="server" CellPadding="20" CellSpacing="70">
                    <ItemTemplate>
                        <table style="display: inline-block;">
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" Height="185px" ImageUrl='<%# Eval("cover") %>' Width="173px" />
                                             <br />
                                             <asp:Label ID="title" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("title") %>' />
                                             <br />
                                             

                                           
                                        </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:ListView>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 81px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 81px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 81px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 81px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</form>

</asp:Content>
