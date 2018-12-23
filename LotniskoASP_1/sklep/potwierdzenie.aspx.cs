using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LotniskoASP_1.sklep
{
    public partial class potwierdzenie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            produkt_qty.Text = countItems().ToString();
            if (Session["cost"] != null)
                confirm_content.InnerHtml = "<h3>Dziękujemy za złożenie zamówienia</h3><br /><p>Łącznie do zapłaty: " + Session["cost"] + "</p>";
            else
                confirm_content.InnerHtml = "<p style='color:red;'><b>Nie złożyłeś zamówienia</b></p>";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            Response.Redirect("produkty.aspx");
        }

        public int countItems()
        {
            Hashtable order;
            int ret = 0;
            if (Session["order"] != null)
            {
                order = (Hashtable)Session["order"];
                foreach (int val in order.Values)
                {
                    ret += val;
                    //Response.Write(val);
                }
            }
            return ret;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["order"] = null;
            Session["cost"] = null;
            Response.Redirect("../strona_glowna.html");
        }
    }
}