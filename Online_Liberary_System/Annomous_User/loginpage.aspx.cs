using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Liberary_System.Annomous_User
{
    public partial class loginpage : System.Web.UI.Page
    {
        libraryEntities library = new libraryEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                string mail = txt_mail.Text;
                int pass = int.Parse(txt_upass.Text);

                var selected = library.users.Where(u => u.email == mail && u.password == pass && u.isDeleted == false).SingleOrDefault();

                if (selected!=null)
                {
                    if(selected.role==role.Basic_Admin)
                    {
                        Session.Add("basicadminId", selected.user_id);
                        Response.Redirect("~/Basic_Admin/profile.aspx");
                    }
                    else if(selected.role == role.Admin)
                    {
                        if (selected.firstLogin == false)
                        {

                            Session.Add("adminId", selected.user_id);
                            Response.Redirect("~/Admin/profile.aspx");
                        }
                        else
                        {
                            Session.Add("newadminId", selected.user_id);
                            Response.Redirect("~/Admin/adminfirst.aspx");
                        }
                    }
                    else if(selected.role == role.Employee)
                    {
                        if (selected.firstLogin == false)
                        {

                            Session.Add("empId", selected.user_id);
                            Response.Redirect("~/Employee/Profile.aspx");
                        }
                        else
                        {
                            Session.Add("newempId", selected.user_id);
                            Response.Redirect("~/Employee/empfirst.aspx");
                        }

                    }
                    else
                    {
                        if (selected.firstLogin == false)
                        {

                            Session.Add("memberId", selected.user_id);
                            Response.Redirect("~/Members/profile.aspx");
                        }
                        else
                        {
                            Session.Add("newmemberId", selected.user_id);
                            Response.Redirect("~/Members/memberfirst.aspx");
                        }

                    }
                }
                else
                    lbl_status.Text = "invalid username or password";
             }
        }

    }
}