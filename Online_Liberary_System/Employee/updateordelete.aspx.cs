using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Liberary_System.Employee
{
    public partial class updateordelete : System.Web.UI.Page
    {
        libraryEntities library = new libraryEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var query = library.users.Where(member => member.role == null && member.isDeleted == false).Select(member => new { member.fName, member.lName, member.address, member.phone, member.user_id,member.email });
                member_dl.DataSource = query.ToList();
                member_dl.DataBind();
            }

        }

        protected void member_dl_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["memberid"] = e.CommandArgument.ToString();
            if (e.CommandName == "update")
            {
                Response.Redirect("~/Employee/updatemember.aspx");
            }
            if (e.CommandName == "delete")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                MsgBox("Do you want to delete !", this.Page, this);
                user deletuser = library.users.Single(u => u.user_id == id);
                deletuser.isDeleted = true;
                //library.users.Remove(deletuser);
                library.SaveChanges();

                var query = library.users.Where(member => member.role == null && member.isDeleted == false).Select(member => new { member.fName, member.lName, member.address, member.phone, member.user_id,member.email });
                member_dl.DataSource = query.ToList();
                member_dl.DataBind();

            }
        }
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());

        }

    }
}