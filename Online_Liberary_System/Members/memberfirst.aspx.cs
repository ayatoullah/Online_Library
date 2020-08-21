using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Liberary_System.Members
{
    public partial class UpdatePassword : System.Web.UI.Page
    {
        libraryEntities library = new libraryEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
         

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
                //save
                int x = int.Parse(Session["newmemberId"].ToString());
                user User = library.users.Single(u => u.user_id == x);
                // User.password= int.Parse(newPass_txt.Text);
                int password = User.password;
                if (int.Parse(oldPass_txt.Text) == password)
                {
                    library.users.Single(u => u.user_id == x).password = int.Parse(newPass_txt.Text);
                    library.SaveChanges();
                    Response.Redirect("/Members/Home.aspx");
                }
                else
                {
                    lbl_status.Text = "plz re enter old password not exist";
                }
                //library.SaveChanges();

                //Response.Redirect("/Members/Home.aspx");
            //}
            //catch {
            //}



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //cancel
            //try
            //{
                newPass_txt.Text = confPass_txt.Text = "";
                lbl_status.Visible = false;
            //}
            //catch
            //{

            //}
        }

        
    }
}