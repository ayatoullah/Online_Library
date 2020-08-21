<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Members.Master" AutoEventWireup="true" CodeBehind="ReadingList.aspx.cs" Inherits="Online_Liberary_System.Members.ReadingList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <form id="form1" runat="server">
        <div class="text-left">
    <br /><br /><br /><br /><br /><br /><br /><br />
     
        </div>
        <table class="nav-justified">
            <tr>
                <td style="width: 816px"></td>
                <td class="text-left" style="width: 2470px">
                    <asp:DropDownList ID="year_ddl" runat="server" Height="26px">
                    </asp:DropDownList>
                    <asp:DropDownList ID="month_ddl" runat="server" Height="26px">
                    </asp:DropDownList>
                    <asp:Button ID="search_btn" runat="server" Text="search" OnClick="search_btn_Click" />
                    <br />
                    <br />
                    <br />
                    <br />
                   
                </td>
                <td style="width: 1203px">
                    </td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 816px">&nbsp;</td>
                <td colspan="2" style="width: 1203px">
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 816px; height: 281px;"></td>
                <td colspan="2" style="width: 1203px; height: 281px;">
                    
                        <asp:ListView ID="ListView1" runat="server" CellPadding="50" CellSpacing="90">
                            <ItemTemplate>
                                 <table style="display:inline-block;" >
                                     <tr>
                                         <td>
                                             <asp:Image ID="Image2" runat="server" Height="185px" ImageUrl='<%# Eval("cover") %>' Width="173px" />
                                             <br />
                                             <asp:Label ID="title" runat="server" Font-Size="Large" ForeColor="#FF0066" Text='<%# Eval("title") %>' />
                                             <br />
                                             <asp:Label ID="startdate" runat="server" Font-Size="small" ForeColor="#000099" Text='<%# Eval("startdate") %>' />
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
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                       
                    </td>
                <td style="height: 281px"></td>
            </tr>
            <tr>
                <td style="width: 816px">&nbsp;</td>
                <td colspan="2" style="width: 1203px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
     
    </form>
  
           
</asp:Content>
