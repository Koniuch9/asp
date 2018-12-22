using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LotniskoASP_1.sklep
{
    public partial class produkty : System.Web.UI.Page
    {
        public CheckBoxList prod;
        public RadioButtonList kat;
        Hashtable prods;
        Hashtable imgs;
        Hashtable names;
        protected void Page_Load(object sender, EventArgs e)
        {                      
            kat = (RadioButtonList)form1.FindControl("RadioButtonList1");
            prod = (CheckBoxList)form1.FindControl("products");
            prods = new Hashtable();
            imgs = new Hashtable();
            names = new Hashtable();
            if (Session["names"] == null) 
            {
                names.Add("tso_speedometer", "TSO Speedometer");
                names.Add("uma_speedometer", "UMA speedometer");
                names.Add("winter_variometer", "Winter Variometer");
                names.Add("aneroid_variometer", "Aneroid Variometer");
                names.Add("uma_altimeter", "UMA Altimeter");
                names.Add("wag-aero_altimeter", "Wag-Aero Altimete");
                names.Add("Sigma-Tek_attitude_indicator", "Sigma-Tek Attitude");
                names.Add("Allen_attitude_indicator", "Allen Attitude");
                names.Add("air-creation_tachometer", "Air-Creation Tachometer");
                names.Add("uma_tachometer", "UMA Tachometer");
                names.Add("switch-panel", "Switch Panel");
                Session["names"] = names;
            }
            if (Session["imgs"] == null) 
            {
                imgs.Add("tso_speedometer", ".jpg");
                imgs.Add("uma_speedometer", ".jpg");
                imgs.Add("winter_variometer", ".jpg");
                imgs.Add("aneroid_variometer", ".jpg");
                imgs.Add("uma_altimeter", ".jpg");
                imgs.Add("wag-aero_altimeter", ".gif");
                imgs.Add("Sigma-Tek_attitude_indicator", ".jpg");
                imgs.Add("Allen_attitude_indicator", ".jpg");
                imgs.Add("air-creation_tachometer", ".jpeg");
                imgs.Add("uma_tachometer", ".jpg");
                imgs.Add("switch-panel", ".png");
                Session["imgs"] = imgs;
            }
            if (Session["products"] == null) 
            {                
                prods.Add("tso_speedometer", 100);
                prods.Add("uma_speedometer", 111);
                prods.Add("winter_variometer", 132);
                prods.Add("aneroid_variometer", 120);
                prods.Add("uma_altimeter", 167);
                prods.Add("wag-aero_altimeter", 150);
                prods.Add("Sigma-Tek_attitude_indicator", 234);
                prods.Add("Allen_attitude_indicator", 256);
                prods.Add("air-creation_tachometer", 237);
                prods.Add("uma_tachometer", 245);
                prods.Add("switch-panel", 328);
                Session["products"] = prods;
            }
            else
            {
                prods = (Hashtable)Session["products"];
            }
            if (IsPostBack) 
            {
                
                Hashtable order;
                if (Session["order"] != null)
                {
                    order = (Hashtable)Session["order"];
                }
                else
                {
                    order = new Hashtable();
                }
                foreach (ListItem li in prod.Items)
                {
                    if (li.Selected)
                    {
                        if (order.ContainsKey(li.Value))
                        {
                            order[li.Value] = (int)order[li.Value] + int.Parse(TextBox1.Text);                            
                        }
                        else
                        {
                            order.Add(li.Value, int.Parse(TextBox1.Text));                            
                        }
                    }
                }
                Session["order"] = order;
            }
            produkt_qty.Text = countItems().ToString(); 
            if (kat != null && prod != null) 
            {
                prod.Items.Clear();
                ListItem li, li1;
                switch (kat.SelectedValue) 
                {
                    case "speedometer":
                        li = new ListItem(generateText("TSO Speedometer", "TSO_speedometer.jpg", (int)prods["tso_speedometer"]),"tso_speedometer", true);
                        li1 = new ListItem(generateText("UMA Speedometer", "UMA_speedometer.jpg", (int)prods["uma_speedometer"]), "uma_speedometer", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "variometer":
                        li = new ListItem(generateText("Winter Variometer", "winter_variometer.jpg", (int)prods["winter_variometer"]), "winter_variometer", true);
                        li1 = new ListItem(generateText("Aneroid Variometer", "aneroid_variometer.jpg", (int)prods["aneroid_variometer"]), "aneroid_variometer", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "altitude":
                        li = new ListItem(generateText("UMA Altimeter", "uma_altimeter.jpg", (int)prods["uma_altimeter"]), "uma_altimeter", true);
                        li1 = new ListItem(generateText("Wag-Aero Altimeter", "wag-aero_altimeter.gif", (int)prods["wag-aero_altimeter"]), "wag-aero_altimeter", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "horizon":
                        li = new ListItem(generateText("Sigma-Tek Attitude", "Sigma-Tek_attitude_indicator.jpg", (int)prods["Sigma-Tek_attitude_indicator"]), "Sigma-Tek_attitude_indicator", true);
                        li1 = new ListItem(generateText("Allen Attitude", "Allen_attitude_indicator.jpg", (int)prods["Allen_attitude_indicator"]), "Allen_attitude_indicator", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "rpm":
                        li = new ListItem(generateText("Air Creation Tachometer", "air-creation_tachometer.jpeg", (int)prods["air-creation_tachometer"]), "air-creation_tachometer", true);
                        li1 = new ListItem(generateText("UMA Tachometer", "uma_tachometer.jpg", (int)prods["uma_tachometer"]), "uma_tachometer", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "panel":
                        li = new ListItem(generateText("Switch Panel", "switch-panel.png", (int)prods["switch-panel"]), "switch-panel", true);
                        prod.Items.Add(li);
                        break;
                    default:
                        break;
                }
                
                
            }
        }

        public String generateText(String name, String url, int cost) 
        {
            return "<table cellpadding='3' cellspacing='3' border='1'><tr><td>" + name + "</td> <td><img src='../grafika/" + url + "' alt='' width='300px' height='300px' /></td><td>" + cost + "zł</td></tr></table>";
        }

        protected void Click(object sender, EventArgs e) 
        {            
                                             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            
        }

        public int countItems() 
        {
            Hashtable order;
            int ret = 0;
            if (Session["order"] != null)
            {
                order = (Hashtable)Session["order"];
                foreach(int val in order.Values)
                {
                    ret += val;
                    //Response.Write(val);
                }
            }
            return ret;
        }
    }
}