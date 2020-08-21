<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Members.Master" AutoEventWireup="true" CodeBehind="Current Borrowed Books.aspx.cs" Inherits="Online_Liberary_System.Members.Current_Borrowed_Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="nav-justified">
            <tr>
                <td style="width: 113px">&nbsp;</td>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 113px">&nbsp;</td>
                <td>
                     <asp:ListView ID="ListView1" runat="server" CellPadding="20" CellSpacing="70" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                            <ItemTemplate>
                                 <table style="display:inline-block;" >
                                     <tr>
                                         <td>
                                             <asp:Image ID="cover" runat="server" Height="185px"  Width="175px" ImageUrl='<%# Eval("cover") %>'/>
                                             <br />
                                             <asp:Label ID="title" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("title") %>' />
                                             <br />
                                             End Date:<asp:Label ID="endDate" runat="server" Font-Size="small" ForeColor="#000099" Text='<%# Eval("endDate") %>' />
                                             <br />
                                             Borrowing Times: <asp:Label ID="counter" runat="server" Font-Size="small" ForeColor="#000099" Text='<%# Eval("counter") %>' />
                                              <br />
                                             <asp:Label ID="alert" runat="server" Font-Size="Large" ForeColor="#FF0000" Text='<%# Eval("alert") %>' />

                                             
                                             
                                             

                                           
                                        </td>
                                     </tr>
                     
                                
                             
                               </table> 

                            </ItemTemplate>
                
                          
                        </asp:ListView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 113px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 113px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <br /><br /><br /><br /><br /><br /><br /><br />
    </form>
</asp:Content>
