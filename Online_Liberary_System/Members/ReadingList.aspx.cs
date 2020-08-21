using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Online_Liberary_System.Members
{
    public partial class ReadingList : System.Web.UI.Page
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
                        //many to many
                        //var book = Library.userBooks.Where(u => u.read_borrow == 0).Select(b => b.book_Id);//books (ids)
                        //var query = book.Select(b => new { b.cover, b.title }).ToList();

                        var book1 = Library.Processes.Where(u => u.C_read_borrow == 0 && u.startDate.Month == DateTime.Now.Month && u.user_id == 1).ToList();//books (ids)

                        List<book> b = new List<book>();
                        //var dates = book1.Select(d => d.startDate);
                        foreach (var item in book1)
                        {
                            //book1.Where()  Select(b => new { b.cover, b.title }).ToList();
                            var book = Library.books.Where(o => o.book_id == item.book_id).FirstOrDefault();
                            b.Add(book);
                        }
                        //var query = book.Single(u.book_Id). Select(b => new { b.cover, b.title }).ToList();
                        ListView1.DataSource = b.Select(m => new { m.title, m.cover, startdate = book1.FirstOrDefault().startDate.Date.ToShortDateString() });
                        ListView1.DataBind();

                        for (int i = 2018; i > 1980; i--)

                        {

                            ListItem ltItem = new ListItem();

                            ltItem.Text = i.ToString();
                            ltItem.Value = i.ToString();

                            year_ddl.Items.Add(ltItem);

                        }
                        DD_Monthbind();


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
        private void DD_Monthbind()
        {
            //try
            //{

                //create instance of daytime format info
                DateTimeFormatInfo info = DateTimeFormatInfo.GetInstance(null);
                //to loop till 12 month
                for (int i = 1; i < 13; i++)
                {
                    month_ddl.Items.Add(new ListItem(info.GetMonthName(i), i.ToString()));
                }
                month_ddl.SelectedValue = DateTime.Now.Month.ToString();
            //}
            //catch
            //{

            //}
           
        }

        protected void search_btn_Click(object sender, EventArgs e)
        {
            //try
            //{

                int year = int.Parse(year_ddl.SelectedValue);
                int month = int.Parse(month_ddl.SelectedValue);
                //int book_id=Library.books.Where()
                var query = Library.Processes.Where(p => p.C_read_borrow == 0 && p.startDate.Month == month && p.startDate.Year == year);

                var book1 = Library.Processes.Where(u => u.C_read_borrow == 0 && u.user_id == 1).ToList();
                List<book> b = new List<book>();
                foreach (var item in query)
                {
                    var book = Library.books.Where(o => o.book_id == item.book_id).FirstOrDefault();

                    b.Add(book);
                }
                ListView1.DataSource = b.Select(m => new { m.title, m.cover, startdate = book1.FirstOrDefault().startDate.Date.ToShortDateString() });
                ListView1.DataBind();
            //}
            //catch
            //{

            //}

        }
    }
}