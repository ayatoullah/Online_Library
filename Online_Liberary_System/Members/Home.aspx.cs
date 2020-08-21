using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace Online_Liberary_System.Members
{
    public partial class Home : System.Web.UI.Page
    {
        libraryEntities library = new libraryEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                Session["user_id"] = 1;
                if (Session["user_id"] != null)
                {

                
                        int x = int.Parse(Session["user_id"].ToString());
                        user User = library.users.Single(u => u.user_id == x);
                        fname_txt.Text = User.fName;
                        lname_txt.Text = User.lName;
                        BD_txt.Text = User.birthDate.ToString();
                        address_txt.Text = User.address;
                        phone_txt.Text = User.phone;
                        email_txt.Text = User.email;

                        cncl_btn.Visible = false;
                        add_TxtBox.Visible = false;
                        phone_TxtBox.Visible = false;
                        email_TxtBox.Visible = false;
                    fu_image.Visible = false;

                    //ImageUrl = '<%# "data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("image")) %>'



                    //display aya
                    //  byte[] bytes=(library.users.Single(u=>u.user_id==x).image);

                    //byte[] bytes = (byte[])library.users.Single(u => u.user_id == x).image.();
                    //byte[] array = library.ASCII.GetBytes(library.users.Single(u => u.user_id == x).image);
                    //byte[] bArray = Encoding.UTF8.GetBytes(library.users.Single(u => u.user_id == x).image);




                    //display---eman
                    //string str = Convert.ToBase64String(library.users.Single(u => u.user_id == x).image.ToString());
                    //admin_img.Attributes["src"] = "data:~/MasterPages/member.jpg;base64," + str;

                    ////display
                    if (library.users.Single(u => u.user_id == x).image != null)
                    {
                        string str = Convert.ToBase64String(library.users.Single(u => u.user_id == x).image);
                        Image1.Attributes["src"] = "data:~/MasterPages/MemberImg/jpg;base64," + str;
                    }
                    else
                    {

                    }
                    //upload





                }
                else
                {
                    Response.Redirect("~/loginpage.aspx");
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //updatepassword
            Response.Redirect("/Members/memberfirst.aspx");
        }

        protected void save_btn_Click(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
            int x = int.Parse(Session["user_id"].ToString());
            user User = library.users.Single(u => u.user_id == x);
            int flag = 0;
            if (save_btn.Text == "update profile")
            {

               

                    cncl_btn.Visible = true;
                save_btn.Text = "save";
                flag = 1;
                
                fname_txt0.Text = User.fName;
                lname_txt0.Text = User.lName;
                BD_txt0.Text = User.birthDate.ToString();
                add_TxtBox.Text = User.address;
                //===========
                fu_image.Visible = true;
                //================
                //phone_TxtBox.Text = phone_txt.Text;
                //email_TxtBox.Text = email_txt.Text;
                phone_TxtBox.Text = User.phone;

                //var emailList = 1;
                    
                email_TxtBox.Text = User.email;
                //activate textbox
               
                add_TxtBox.Visible = true;
                phone_TxtBox.Visible = true;
                email_TxtBox.Visible = true;
                //deactivate labels
                fname_txt.Visible = false;
                lname_txt.Visible = false;
                BD_txt.Visible = false;
                address_txt.Visible = false;
                phone_txt.Visible = false;
                email_txt.Visible = false;
                //take text of textbox and update it in system
                fname_txt0.Visible = true;
                lname_txt0.Visible = true;
                BD_txt0.Visible = true;



            }
            if (flag == 0 && save_btn.Text == "save")
            {
                int counter = 0;
                var query = library.users.Where(u => u.user_id != x && u.email == email_TxtBox.Text).Select(em => em.email).ToList();
                counter = library.users.Where(u => u.user_id != x && u.email == email_TxtBox.Text).Select(em => em.email).Count();
                if (counter == 0)
                {//--------------------------------eman
                    FileUpload img = (FileUpload)fu_image;
                    Byte[] imgByte = null;
                    if (img.HasFile && img.PostedFile != null)
                    {
                        //To create a PostedFile
                        HttpPostedFile File = fu_image.PostedFile;
                        //Create byte Array with file len
                        imgByte = new Byte[File.ContentLength];
                        //force the control to load data in array
                        File.InputStream.Read(imgByte, 0, File.ContentLength);
                        library.users.Single(u => u.user_id == x).image= imgByte;

                    }    //---------------------------------------------------------------
                        cncl_btn.Visible = false;
                        flag = 1;
                        save_btn.Text = "update profile";



                        User.email = email_TxtBox.Text;

                        User.address = add_TxtBox.Text;
                        User.phone = phone_TxtBox.Text;
                        User.image = imgByte;//eman

                        fname_txt.Text = User.fName;
                        lname_txt.Text = User.lName;
                        BD_txt.Text = User.birthDate.ToString();
                        address_txt.Text = User.address;
                        phone_txt.Text = User.phone;
                        email_txt.Text = User.email;
                        if (User.image != null)
                        {
                            string str = Convert.ToBase64String(library.users.Single(u => u.user_id == x).image);
                            Image1.Attributes["src"] = "data:~/MasterPages/MemberImg/jpg;base64," + str;
                        }
                        else
                        {

                        }

                        //deactivate textbox

                        add_TxtBox.Visible = false;
                        phone_TxtBox.Visible = false;
                        email_TxtBox.Visible = false;
                        fname_txt0.Visible = false;
                        lname_txt0.Visible = false;
                        BD_txt0.Visible = false;
                        email_lbl.Visible = false;




                        //activate labels
                        fname_txt.Visible = true;
                        lname_txt.Visible = true;
                        BD_txt.Visible = true;
                        address_txt.Visible = true;
                        phone_txt.Visible = true;
                        email_txt.Visible = true;





                    
                }

                else
                {
                    email_lbl.Text = "This email already exists";
                }

                library.SaveChanges();
            }

        }

        protected void cncl_btn_Click(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            add_TxtBox.Visible = false;
            phone_TxtBox.Visible = false;
            email_TxtBox.Visible = false;
            fname_txt.Visible = true;
            lname_txt.Visible = true;
            BD_txt.Visible = true;
            address_txt.Visible = true;
            phone_txt.Visible = true;
            email_txt.Visible = true;
            cncl_btn.Visible = false;
            save_btn.Text = "update profile";
            fname_txt0.Visible = false;
            lname_txt0.Visible = false;
            BD_txt0.Visible = false;

            library.SaveChanges();





        }
    }
}