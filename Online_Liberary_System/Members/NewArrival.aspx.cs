using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Liberary_System
{
    public partial class NewArrival : System.Web.UI.Page
    {

        libraryEntities Library = new libraryEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                    Session["user_id"] = 1;
                    if (Session["user_id"] != null)
                    {
                        int x = int.Parse(Session["user_id"].ToString());


                        readingList.DataSource = Library.books.Where(b => b.joinDate == DateTime.Today).
                                Select(b => new { cover = b.cover, pub = b.publisher, title = b.title }).ToList();
                        readingList.DataBind();

                    }
                    else
                    {
                        Response.Redirect("/Login.aspx");
                    }

                }
                else
                {
                }
            }
            catch {
            }
        }
        protected void readingList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}