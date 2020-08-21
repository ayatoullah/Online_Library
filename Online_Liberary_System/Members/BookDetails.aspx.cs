using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Liberary_System.Members
{
    public partial class Book_Details : System.Web.UI.Page
    {
        libraryEntities Library = new libraryEntities();
        int bookID;
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
                if (!IsPostBack)
                {
                    UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                    Session["user_id"] = 1;

                    if (Session["user_id"] != null && Request.QueryString["book_id"] != null)
                    {

                        int x = int.Parse(Session["user_id"].ToString());
                        //int bookID =Convert.ToInt32(Request.QueryString["book_id"].ToString());
                        bookID = int.Parse(Request.QueryString["book_id"].ToString());
                        /*bookID = Request.QueryString["book_id"].ToString()*/
                        ;

                        ListView1.DataSource = Library.books.Where(b => b.book_id == bookID).Select(b => new
                        {
                            cover = b.cover,
                            publisher = b.publisher,
                            title = b.title,
                            book_id = b.book_id,
                            name = b.name,
                            NoOfPages = b.NoOfPages,
                            availableCopies = b.availableCopies,
                            publishDate = b.publishDate,
                            category_Name = b.category.ctegory_name,
                            author = b.author.fName + "" + b.author.lName
                        }).ToList();
                        ListView1.DataBind();

                    }
                    else
                    {
                        Response.Redirect("/Login.aspx");
                    }

                }
                else
                {
                }
            //}
            //catch { }
        }

        
    }
}