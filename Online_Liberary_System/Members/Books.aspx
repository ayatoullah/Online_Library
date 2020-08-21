<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Members.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Online_Liberary_System.Members.ReadingBooksv2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <form id="form1" runat="server">
        <div class="text-left">
    <br /><br /><br /><br /><br /><br /><br /><br />
     
        </div>
        <table class="nav-justified">
            <tr>
                <td style="width: 252px">&nbsp;</td>
                <td class="text-left" style="width: 599px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:TextBox ID="searchtextbox" runat="server" Height="23px" style="margin-top: 0" TextMode="Search" Width="126px" AutoCompleteType="Search" OnTextChanged="searchtextbox_TextChanged"></asp:TextBox>
                    <asp:Button ID="search_btn" runat="server" OnClick="search_btn_Click" Text="search" />
                </td>
                <td style="width: 1203px">
                    <asp:Label ID="search_lbl" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 252px">&nbsp;</td>
                <td colspan="2" style="width: 1203px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 252px">&nbsp;</td>
                <td colspan="2" style="width: 1203px">
                    
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    
                        <asp:ListView ID="readingList" runat="server" CellPadding="20" CellSpacing="70" OnSelectedIndexChanged="readingList_SelectedIndexChanged">
                          
                            
                            <ItemTemplate>
                                 <table style="display:inline-block;" >
                                     <tr>
                                         <td>
                                              
                                             <asp:Image ID="Image2" runat="server" Height="185px" ImageUrl='<%# "data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("CoverImage")) %>' Width="173px" />
                                             <br />
                                             <asp:Label ID="title" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("title") %>' />
                                             <br />
                                             <a href="<%# String.Format("BookDetails.aspx?book_id={0}",Eval("book_id")) %>">read more</a> 
                                             

                                           
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
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                       
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 252px">&nbsp;</td>
                <td colspan="2" style="width: 1203px">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
     
    </form>
  
           
</asp:Content>
