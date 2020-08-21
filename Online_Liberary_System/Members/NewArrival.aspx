<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Members.Master" AutoEventWireup="true" CodeBehind="NewArrival.aspx.cs" Inherits="Online_Liberary_System.NewArrival" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <form id="form1" runat="server">
        <div class="text-left">
    <br /><br /><br /><br /><br /><br /><br /><br />
     
        </div>
        <table class="nav-justified">
            <tr>
                <td style="width: 252px">&nbsp;</td>
                <td class="text-left" style="width: 599px">
                    &nbsp;</td>
                <td style="width: 1203px">
                    &nbsp;</td>
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
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
     
    </form>
  
           
</asp:Content>
