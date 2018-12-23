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
        protected void Page_Load(object sender, EventArgs e)
        {
            //String content = "<table border='1'><tr><th>Nazwa</th><th>Zdjęcie</th><th>Ilość</th><th>Cena</th></tr>";
            order = (Hashtable)Session["order"];
            imgs = (Hashtable)Session["imgs"];
            prods = (Hashtable)Session["products"];
            names = (Hashtable)Session["names"];           
            if (IsPostBack) 
            {
                if (order_content.SelectedIndex != -1 && TextBox1.Text != "")
                {                   
                    if (int.Parse(TextBox1.Text) == 0)
                    {
                        order.Remove(order_content.SelectedValue);                        
                    }
                    else
                    {
                        order[order_content.SelectedValue] = int.Parse(TextBox1.Text);
                    }
                    if (order.Count == 0)
                        Session["order"] = null;
                    else
                        Session["order"] = order;
                }                
            }
            produkt_qty.Text = countItems().ToString();
            koszt.Text = countTotal().ToString() + " zł";
            if(order_content.Items != null)order_content.Items.Clear();
            if (Session["order"] != null)
            {
                order = (Hashtable)Session["order"];
                //imgs = (Hashtable)Session["imgs"];
                //prods = (Hashtable)Session["products"];
                //names = (Hashtable)Session["names"];
                
                foreach (DictionaryEntry d in order)
                {
                    //content += "<tr><td>" +names[d.Key] + "</td><td><img src='../grafika/" + d.Key + imgs[d.Key] + "' alt='' width='200px' height='200px'/></td><td>" + d.Value + "</td><td>" + (int)d.Value * (int)prods[d.Key] + "</td></tr>";
                    ListItem li = new ListItem(generateText((String)names[d.Key], (String)d.Key + (String)imgs[d.Key], (int)d.Value * (int)prods[d.Key], (int)d.Value), (String)d.Key, true);
                    order_content.Items.Add(li);
                }
                // cart_content.InnerHtml = content + "</table>";
            }
            else 
            {
                Button1.Visible = false;
                Button2.Visible = false;
                TextBox1.Visible = false;
                Label1.Visible = false;
                cart_content.InnerHtml = "<p style='color:red' ><b>Nie ma żadnych produktów</b></p>";
            }
             
        }
        
        public String generateText(String name, String url, int cost, int qty)
        {
            return "<table cellpadding='3' cellspacing='3' border='1'><tr><td>" + name + "</td> <td><img src='../grafika/" + url + "' alt='' width='200px' height='200px' /></td><td>" + cost + "zł</td><td>"+ qty +"</tr></table>";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            order.Clear();
            Session["order"] = null;
            Response.Redirect("koszyk.aspx");
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

        public double countTotal() 
        {
            double ret = .0;
            Hashtable order;
            if (Session["order"] != null)
            {
                order = (Hashtable)Session["order"];
                foreach (DictionaryEntry d in order)
                {
                    ret += (int)d.Value * (int)prods[d.Key];
                }
            }
            switch (RadioButtonList2.SelectedValue) 
            {
                case "Kurier":
                    ret += 7.99;
                    break;
                case "Paczkomat":
                    ret += 5;
                    break;
                case "Poczta":
                    ret += 9.99;
                    break;
            }
            return ret;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["cost"] = koszt.Text;
            Response.Redirect("potwierdzenie.aspx");
        }
    }
}