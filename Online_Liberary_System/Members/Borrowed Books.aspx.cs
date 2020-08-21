using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Online_Liberary_System.Members
{
    public partial class Borrowed_Books : System.Web.UI.Page
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
                        //elborrowing books
                        /*var book1 = Library.userBooks.Where(u => u.read_borrow == 1 ).ToList();*/
                        var book1 = Library.Processes.Where(p => p.C_read_borrow == 0 && p.isdelivered == true && p.startDate.Month == DateTime.Now.Month && p.user_id == x).ToList();
                        var book2 = book1;
                        List<book> b = new List<book>();
                        //List<userBorrow> bb = new List<userBorrow>();
                        foreach (var item in book1)
                        {

                            //var book=Library.userBorrows.Where(o => o.book_id == item.book_Id && o.isreturned == true).ToList(); // return List<userborrow>

                            //bb.AddRange(book);
                            var book = Library.books.Where(o => o.book_id == item.book_id).FirstOrDefault();// rn book
                            b.Add(book);

                        }
                        //int borrowcount;
                        //var borrowlist = Library.Processes.Where(p => p.read_borrow == 1);
                        //var borrowlist2 = borrowlist;

                        //List<book> bb = new List<book>();
                        //foreach (var outeritem in borrowlist)//list of process
                        //{
                        //    //var outeritem = item;
                        //    foreach(var  inneritem in borrowlist2)//list of process
                        //    {
                        //        var bbook=.Where(bl=>bl.book_id == inneritem.book_id).FirstOrDefault;
                        //        bb.Add(bbook);
                        //    }

                        //}


                        ListView1.DataSource = b.Select(m => new { m.title, m.cover });
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

        protected void search_btn_Click(object sender, EventArgs e)
        {
            //try
            //{
                int year = int.Parse(year_ddl.SelectedValue);
                int month = int.Parse(month_ddl.SelectedValue);
                //int book_id=Library.books.Where()
                var query = Library.Processes.Where(p => p.C_read_borrow == read_borrow.Borrow && p.isdelivered == true && p.startDate.Month == month && p.startDate.Year == year).ToList();
                List<book> b = new List<book>();
                foreach (var item in query)
                {
                    var book = Library.books.Where(o => o.book_id == item.book_id).FirstOrDefault();
                    b.Add(book); // garaby
                }
                ListView1.DataSource = b.Select(m => new { m.title, m.cover });
                ListView1.DataBind();
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
            //catch { }
        }
    }
}