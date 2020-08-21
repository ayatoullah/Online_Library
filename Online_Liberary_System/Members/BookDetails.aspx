<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Members.Master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="Online_Liberary_System.Members.Book_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <p>
        </p>
        <p>
        </p>
      
           
            <table class="nav-justified">
                <tr>
                    <td style="width: 127px">&nbsp;</td>
                    <td colspan="2" rowspan="6">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:ListView ID="ListView1" runat="server">
                 <ItemTemplate>
                                 <table style="display:inline-block;" >
                                     <tr>
                                         <td>  
                                             <asp:Image ID="cover" runat="server" Height="185px" ImageUrl='<%# Eval("cover") %>' Width="250px" />
                                             <br />
                                             <asp:Label ID="title" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("title") %>' />
                                             <br />
                                             <asp:Label ID="author" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("author") %>' />
                                             <br />
                                             <asp:Label ID="category_Name" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("category_Name") %>' />
                                              <br />
                                             <asp:Label ID="name" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("name") %>' />
                                             <br />
                                             
                                             <asp:Label ID="publishDate" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("publishDate") %>' />
                                              <br />
                                             <asp:Label ID="availableCopies" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("availableCopies") %>' />
                                             <br />
                                             <asp:Label ID="NoOfPages" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("NoOfPages") %>' />
                                        </td>
                                     </tr>
                     
                                
                             
                               </table> 

                            </ItemTemplate>
            </asp:ListView></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 127px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 127px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 127px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 127px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 127px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 127px">&nbsp;</td>
                    <td style="width: 71px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
           
        
    </form>
</asp:Content>
