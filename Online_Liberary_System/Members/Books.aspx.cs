using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Liberary_System.Members
{
    public partial class ReadingBooksv2 : System.Web.UI.Page
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
                        readingList.DataSource = Library.books.Select(b => new { cover = b.cover, publisher = b.publisher, title = b.title, book_id = b.book_id }).ToList();
                        readingList.DataBind();
                        List<string> search_type = new List<string> { "category name", "publish year", "publisher", "author", "title", "availableCopies" };
                        DropDownList1.DataSource = search_type;
                        DropDownList1.DataBind();

                    }
                    else
                    {
                        Response.Redirect("~/Annomous_User/loginpage.aspx");
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

        
        protected void search_btn_Click(object sender, EventArgs e)
        {

            //try
            //{
                if (DropDownList1.SelectedValue != null && searchtextbox.Text != null)
                {
                    search_lbl.Text = "";
                    var search_type = DropDownList1.SelectedValue;

                    switch (search_type)

                    {

                        case "category name":
 
                            string catName = searchtextbox.Text;
                           
                            if (Library.categories.Where(c => c.ctegory_name == catName).Count() != 0)
                            {
                                int catID = int.Parse(Library.categories.Where(c => c.ctegory_name == catName).FirstOrDefault().category_id.ToString());
                                var query1 = Library.books.Where(b => b.cat_id == catID)
                                    .Select(b => new { b.cover, b.title, b.book_id }).ToList();  // FirstOrDefault();
                                readingList.DataSource = query1;
                                readingList.DataBind();
                            }


                            else
                            {
                                search_lbl.Text = "not found-try again";
                                readingList.Visible = false;
                               
                            }
                            break;
                        case "publish year":
                            int number = 0;
                            if(int.TryParse(searchtextbox.Text.Trim(),out number))
                            {
                                readingList.Visible = true;
                                int x = int.Parse(searchtextbox.Text.ToString());

                                int year = int.Parse(searchtextbox.Text);
                                var query2 = Library.books.Where(b => b.publishDate.Year == year).Select(b => new { b.cover, b.title, b.book_id }).ToList();
                                readingList.DataSource = query2;
                                readingList.DataBind();
                            }
                            

                           
                            else
                            {
                                search_lbl.Text = "not found-try again";
                                readingList.Visible = false;
                            }


                        break;
                        case "publisher":
                            readingList.Visible = true;
                            if(Library.books.Where(b => b.publisher == searchtextbox.Text).Count() != 0)
                            {
                            var query3 = Library.books.Where(b => b.publisher == searchtextbox.Text).Select(b => new { b.cover, b.title, b.book_id }).ToList();

                            readingList.DataSource = query3;
                            readingList.DataBind();

                            }
                            else
                            {
                                search_lbl.Text = "not found-try again";
                                readingList.Visible = false;
                            }

                        break;
                        case "author":
                            readingList.Visible = true;
                            string authorName = searchtextbox.Text;
                            if (Library.authors.Where(a => a.fName == authorName).Count() != 0)
                            {
                                int author_ID = Library.authors.Single(a => a.fName == authorName).author_id;
                                var query4 = Library.books.Where(b => b.author_Id == author_ID).Select(b => new { b.cover, b.title, b.book_id }).ToList();
                                readingList.DataSource = query4;
                                readingList.DataBind();
                            }
                            else
                            {
                                search_lbl.Text = "not found-try again";
                                readingList.Visible = false;
                            }




                        break;
                        case "title":
                            readingList.Visible = true;
                            if(Library.books.Where(b => b.title == searchtextbox.Text).Count() != 0)
                            {
                                var query5 = Library.books.Where(b => b.title == searchtextbox.Text).Select(b => new { b.cover, b.title, b.book_id }).ToList();
                                readingList.DataSource = query5;
                                readingList.DataBind();

                            }
                            else
                            {
                                search_lbl.Text = "not found-try again";
                                readingList.Visible = false;
                            }


                        break;
                        case "availableCopies":
                            readingList.Visible = true;
                            searchtextbox.Visible = false;
                            var query6 = Library.books.Where(b => b.availableCopies >= 1).Select(b => new { b.cover, b.title, b.book_id }).ToList();
                            readingList.DataSource = query6;
                            readingList.DataBind();


                            break;
                    }
                }
                else
                {
                    if (searchtextbox == null)
                        search_lbl.Text = "enter in searchbox";
                }
            //}
            //catch
            //{
            //    search_lbl.Text = "re-enter in searchbox";
            //}


        }

        protected void searchtextbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //try
            //{
            searchtextbox.Text = "";
            if (DropDownList1.SelectedValue == "availableCopies")
                    searchtextbox.Visible = false;
            else
                    searchtextbox.Visible = true;
            //}
            //catch
            //{
               
            //}

        }
    }
    
}