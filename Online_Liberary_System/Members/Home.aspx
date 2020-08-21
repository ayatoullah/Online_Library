<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Members.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Liberary_System.Members.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">

    <form id="form1" runat="server">
          <br /><br /><br /><br /><br /><br /><br />
          <table class="nav-justified">
              <tr>
                  <td style="width: 168px">&nbsp;</td>
                  <td colspan="7">
                           <asp:Image ID="Image1" runat="server" Height="15%" Width="10%" />
                      </td>
              </tr>
              <tr>
                  <td style="width: 168px; height: 62px"></td>
                  <td rowspan="2" style="width: 36px">
 
                  </td>
                  <td style="width: 106px; height: 62px">
                      <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
&nbsp;:</td>
                  <td style="width: 247px; height: 62px">
                      <asp:Label ID="fname_txt" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                  <td style="height: 62px; width: 266px">
                      <asp:Label ID="fname_txt0" runat="server"></asp:Label>
                  </td>
                  <td style="height: 62px; width: 15px;">
                      &nbsp;</td>
                  <td style="height: 62px">&nbsp;</td>
                  <td style="height: 62px"></td>
              </tr>
              <tr>
                  <td style="width: 168px; height: 48px"></td>
                  <td style="width: 106px; height: 48px">
                      <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
&nbsp;:</td>
                  <td style="width: 247px; height: 48px">
                      <asp:Label ID="lname_txt" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                  <td style="height: 48px; width: 266px">
                      <asp:Label ID="lname_txt0" runat="server"></asp:Label>
                  </td>
                  <td style="height: 48px; width: 15px;">
                      &nbsp;</td>
                  <td style="height: 48px">&nbsp;</td>
                  <td style="height: 48px"></td>
              </tr>
              <tr>
                  <td style="width: 168px; height: 55px"></td>
                  <td style="width: 36px">
 
                  </td>
                  <td style="width: 106px; height: 55px">
                      <asp:Label ID="Label3" runat="server" Text="BirthDay"></asp:Label>
&nbsp;&nbsp;&nbsp; :</td>
                  <td style="width: 247px; height: 55px">
                      <asp:Label ID="BD_txt" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                  <td style="height: 55px; width: 266px">
                      <asp:Label ID="BD_txt0" runat="server"></asp:Label>
                  </td>
                  <td style="height: 55px; width: 15px;">
                      &nbsp;</td>
                  <td style="height: 55px">&nbsp;</td>
                  <td style="height: 55px"></td>
              </tr>
              <tr>
                  <td style="width: 168px; height: 53px"></td>
                  <td style="width: 36px">
 
                  </td>
                  <td style="width: 106px; height: 53px">Address&nbsp;&nbsp;&nbsp; :</td>
                  <td style="width: 247px; height: 53px">
                      <asp:Label ID="address_txt" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                  <td style="height: 53px; width: 266px">
                      <asp:TextBox ID="add_TxtBox" runat="server" Width="243px"></asp:TextBox>
                  </td>
                  <td style="height: 53px; width: 15px;">
                      <asp:RequiredFieldValidator ID="email_validator" runat="server" ControlToValidate="add_TxtBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  <td style="height: 53px"></td>
                  <td style="height: 53px"></td>
              </tr>
              <tr>
                  <td style="width: 168px; height: 56px"></td>
                  <td style="width: 36px">
 
                  </td>
                  <td style="width: 106px; height: 56px">Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                  <td style="width: 247px; height: 56px">
                      <asp:Label ID="phone_txt" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                  <td style="height: 56px; width: 266px">
                      <asp:TextBox ID="phone_TxtBox" runat="server" Width="246px" TextMode="Phone"></asp:TextBox>
                  </td>
                  <td style="height: 56px; width: 15px;">
                      <asp:RequiredFieldValidator ID="phone_validator" runat="server" ControlToValidate="phone_TxtBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  <td style="height: 56px">
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="insert valid mob phone" ForeColor="Red" ValidationExpression="(01)[0-9]{9}" ControlToValidate="phone_TxtBox"></asp:RegularExpressionValidator>
                  </td>
                  <td style="height: 56px"></td>
              </tr>
              <tr>
                  <td style="width: 168px; height: 57px"></td>
                  <td style="width: 36px; height: 57px"></td>
                  <td style="width: 106px; height: 57px">email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                  <td class="text-left" style="width: 247px; height: 57px">
                      <asp:Label ID="email_txt" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                  <td style="height: 57px; width: 266px">
                      <asp:TextBox ID="email_TxtBox" runat="server" Width="244px"></asp:TextBox>
                  </td>
                  <td style="height: 57px; width: 15px;">
                      <asp:RequiredFieldValidator ID="email_valid" runat="server" ControlToValidate="email_TxtBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  <td style="height: 57px">
                      <asp:Label ID="email_lbl" runat="server" ForeColor="Red"></asp:Label>
                      <br />
                      <asp:RegularExpressionValidator ID="email_reg" runat="server" ControlToValidate="email_TxtBox" ErrorMessage="insert valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </td>
                  <td style="height: 57px"></td>
              </tr>
              <tr>
                  <td style="width: 168px; height: 57px;"></td>
                  <td style="width: 36px; height: 57px;"></td>
                  <td style="width: 106px; height: 57px;">Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                  <td style="width: 247px; height: 57px;"></td>
                  <td style="width: 266px; height: 57px;">
                      <asp:FileUpload ID="fu_image" runat="server" Width="244px" />
                  </td>
                  <td style="height: 57px; width: 15px;">
                      &nbsp;</td>
                  <td style="height: 57px"></td>
                  <td style="height: 57px"></td>
              </tr>
              <tr>
                  <td style="width: 168px; height: 34px"></td>
                  <td style="width: 36px; height: 34px"></td>
                  <td style="width: 106px; height: 34px">
                      <asp:Button ID="save_btn" runat="server" Text="update profile" Width="101px" OnClick="save_btn_Click" />
                  </td>
                  <td style="width: 247px; height: 34px" class="text-center">
                      <asp:Button ID="cncl_btn" runat="server" Text="cancel" Width="72px" OnClick="cncl_btn_Click" />
                  </td>
                  <td style="height: 34px; width: 266px">
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="update password" />
                  </td>
                  <td style="height: 34px; width: 15px;">
                      &nbsp;</td>
                  <td style="height: 34px"></td>
                  <td style="height: 34px"></td>
              </tr>
              <tr>
                  <td style="height: 23px; width: 168px"></td>
                  <td style="height: 23px; width: 36px"></td>
                  <td style="width: 106px; height: 23px"></td>
                  <td style="height: 23px; width: 247px"></td>
                  <td style="height: 23px; width: 266px"></td>
                  <td style="height: 23px; width: 15px;"></td>
                  <td style="height: 23px"></td>
                  <td style="height: 23px"></td>
              </tr>
              <tr>
                  <td style="width: 168px">&nbsp;</td>
                  <td style="width: 36px">&nbsp;</td>
                  <td style="width: 106px">&nbsp;</td>
                  <td style="width: 247px">&nbsp;</td>
                  <td style="width: 266px">&nbsp;</td>
                  <td style="width: 15px">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td style="width: 168px">&nbsp;</td>
                  <td style="width: 36px">&nbsp;</td>
                  <td style="width: 106px">&nbsp;</td>
                  <td style="width: 247px">&nbsp;</td>
                  <td style="width: 266px">&nbsp;</td>
                  <td style="width: 15px">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
          <br />
    </form>



</asp:Content>
