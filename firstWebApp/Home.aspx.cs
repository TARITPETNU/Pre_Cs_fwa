using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firstWebApp
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //checkAge(readCookie());
            Class1 cs = new Class1();
            cs.test = "nine";
            Response.Write(cs.test);
            checkAge(readSession());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int year = DateTime.Now.Year;
            int birthYear = year - int.Parse(TextBox1.Text);
            AddCookie(birthYear);
            writeSession(birthYear);
            //checkAge(readCookie());
            checkAge(readSession());
        }
        private void AddCookie(int age) {
            HttpCookie cookie = new HttpCookie("userSetting");
            cookie.Value = age.ToString();
            cookie.Expires = DateTime.Now.AddDays(1d);
            Response.Cookies.Add(cookie);
        }
        private int readCookie() {
            HttpCookie userCookie = Request.Cookies["userSetting"];
            if (userCookie == null)
            {
                return 14;
            }
            else{
                return int.Parse(userCookie.Value);
            }
          
        }
        private void checkAge(int age) {
            if (age >= 15)
            {
                //เฉพาะ Server เดียวกัน
                //Response.Redirect("Page2.aspx");
                Server.Transfer("Page2.aspx");
            }
            else
            {

            }
        }
        private void writeSession(int age) {
            Session["userAge"] = age;
        }
        private int readSession()
        {
            if (Session["userAge"] == null) {
                return 0;
            }
            return int.Parse(Session["userAge"].ToString());
        }
    }
}