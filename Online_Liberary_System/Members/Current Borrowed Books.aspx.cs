using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Liberary_System.Members
{
    public partial class Current_Borrowed_Books : System.Web.UI.Page
    {

        libraryEntities Library = new libraryEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            if (!IsPostBack)
                {
                    UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                    Session["user_id"] = 1;
                    if (Session["user_id"] != null)
                    {
                        int x = int.Parse(Session["user_id"].ToString());
                        var book1 = Library.Processes.Where(p => p.C_read_borrow == read_borrow.Borrow && p.isdelivered == false && p.user_id == x).ToList();
                        //borrowed books
                        int BookID = int.Parse(Library.Processes.Where(p => p.C_read_borrow == read_borrow.Borrow && p.isdelivered == false && p.user_id == x).
                            Select(t => t.book_id).FirstOrDefault().ToString());//book_id
                        var book2 = Library.Processes.Where(p => p.C_read_borrow == read_borrow.Borrow && p.user_id == x).ToList();
                        var dt = (from p in book2 group p by p.book_id).ToList();
                        int counter = 0;
                        List<book> b = new List<book>();//define empty list
                        foreach (var outeritem in book1)//currently borrowed books //2 times
                        {
                            var book = Library.books.Where(o => o.book_id == outeritem.book_id).FirstOrDefault();
                            counter = book2.Where(t => t.book_id == outeritem.book_id).Count();
                            b.Add(book);

                        }
                        bool warning = false;
                        var displaybook = b.Select(m => new
                        {
                            m.title,
                            m.cover,
                            endDate = (m.Processes.Where(t => t.isdelivered == false && t.C_read_borrow == read_borrow.Borrow).FirstOrDefault().endDate.Date.ToShortDateString()),
                            counter,
                            alert = (warning = DateTime.Now > m.Processes.Where(t => t.isdelivered == false && t.C_read_borrow == read_borrow.Borrow).
                            FirstOrDefault().endDate) ? "warning" : "______________________"
                        });
                        ListView1.DataSource = displaybook;
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
            //catch
            //{ }
        }


        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}