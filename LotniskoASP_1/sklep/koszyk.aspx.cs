using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LotniskoASP_1.sklep
{
    public partial class koszyk : System.Web.UI.Page
    {
        Hashtable order, imgs, prods, names;
        String selValue = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //String content = "<table border='1'><tr><th>Nazwa</th><th>Zdjęcie</th><th>Ilość</th><th>Cena</th></tr>";
            order = (Hashtable)Session["order"];
            imgs = (Hashtable)Session["imgs"];
            prods = (Hashtable)Session["products"];
            names = (Hashtable)Session["names"];
            if (IsPostBack) 
            {
                selValue = order_content.SelectedValue;
                TextBox1.Text = order[order_content.SelectedValue].ToString();
            }
            if(Session["order"] != null)
            {
                //order = (Hashtable)Session["order"];
                //imgs = (Hashtable)Session["imgs"];
                //prods = (Hashtable)Session["products"];
                //names = (Hashtable)Session["names"];
                order_content.Items.Clear();
                foreach(DictionaryEntry d in order)
                {
                    //content += "<tr><td>" +names[d.Key] + "</td><td><img src='../grafika/" + d.Key + imgs[d.Key] + "' alt='' width='200px' height='200px'/></td><td>" + d.Value + "</td><td>" + (int)d.Value * (int)prods[d.Key] + "</td></tr>";
                    ListItem li = new ListItem(generateText((String)names[d.Key], (String)d.Key + (String)imgs[d.Key], (int)d.Value * (int)prods[d.Key], (int)d.Value), (String)d.Key, true);
                    li.Selected = selValue.Equals(d.Key);
                    order_content.Items.Add(li);
                }
               // cart_content.InnerHtml = content + "</table>";
            }
             
        }

        public String generateText(String name, String url, int cost, int qty)
        {
            return "<table cellpadding='3' cellspacing='3' border='1'><tr><td>" + name + "</td> <td><img src='../grafika/" + url + "' alt='' width='200px' height='200px' /></td><td>" + cost + "zł</td><td>"+ qty +"</tr></table>";
        }
    }
}