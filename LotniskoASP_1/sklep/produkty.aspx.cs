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
        CheckBoxList prod;
        RadioButtonList kat;
        Hashtable prods = new Hashtable();
        bool[] tab = new bool[2];
        String[] keys = new String[2];
        protected void Page_Load(object sender, EventArgs e)
        {
            kat = (RadioButtonList)form1.FindControl("RadioButtonList1");
            prod = (CheckBoxList)form1.FindControl("products");
            produkt_qty.Text = countItems().ToString();
            if (kat != null && prod != null) 
            {
                prod.Items.Clear();
                ListItem li, li1;
                switch (kat.SelectedValue) 
                {
                    case "speedometer":
                        li = new ListItem("TSO Speedometer <img src='../grafika/TSO_speedometer.jpg' alt='' width='300px' height='300px' />    100zł", "tso_speedometer", true);
                        li1 = new ListItem("UMA Speedometer <img src='../grafika/UMA_speedometer.jpg' alt='' width='300px' height='300px' />   120zł", "uma_speedometer", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "variometer":
                        li = new ListItem("Winter Variometer <img src='../grafika/winter_variometer.jpg' alt='' width='300px' height='300px' />    150zł", "winter_variometer", true);
                        li1 = new ListItem("Aneroid Variometer <img src='../grafika/aneroid_variometer.jpg' alt='' width='300px' height='300px' />   145zł", "aneroid_variometer", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "altitude":
                        li = new ListItem("UMA Altimeter <img src='../grafika/uma_altimeter.jpg' alt='' width='300px' height='300px' />    125zł", "uma_altimeter", true);
                        li1 = new ListItem("Wag-Aero Altimeter <img src='../grafika/wag-aero_altimeter.gif' alt='' width='300px' height='300px' />    100zł", "wag-aero_altimeter", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "horizon":
                        li = new ListItem("Sigma-Tek Attitude <img src='../grafika/Sigma-Tek_attitude_indicator.jpg' alt='' width='300px' height='300px' />    250zł", "Sigma-Tek_attitude_indicator", true);
                        li1 = new ListItem("Allen Attitude <img src='../grafika/Allen_attitude_indicator.jpg' alt='' width='300px' height='300px' />    200zł", "Allen_attitude_indicator", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "rpm":
                        li = new ListItem("Air Creation Tachometer <img src='../grafika/air-creation_tachometer.jpeg' alt='' width='300px' height='300px' />    150zł", "air-creation_tachometer", true);
                        li1 = new ListItem("UMA Tachometer <img src='../grafika/uma_tachometer.jpg' alt='' width='300px' height='300px' />    147zł", "uma_tachometer", true);
                        prod.Items.Add(li);
                        prod.Items.Add(li1);
                        break;
                    case "panel":
                        li = new ListItem("Switch Panel <img src='../grafika/switch-panel.png' alt='' width='500px' height='300px' />    328zł", "switch-panel", true);
                        prod.Items.Add(li);
                        break;
                }
                
                
            }
        }

        protected void Click(object sender, EventArgs e) 
        {
            prod = (CheckBoxList)form1.FindControl("products");
            if (prod != null)
            {
                int i = 0;
                foreach (ListItem item in prod.Items)
                {
                    tab[i] = item.Selected;
                    keys[i] = item.Value;
                    Console.Out.Write(keys[i]);
                    i++;
                }
            }
                                             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {   
            prod = (CheckBoxList)form1.FindControl("products");
            if(prod != null)
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
                
                for (int i = 0; i < 2;i++ )
                {
                    if (tab[i])
                    {
                        if (order.ContainsKey(keys[i]))
                        {
                            order[keys[i]] = (int)order[keys[i]] + int.Parse(TextBox1.Text);
                        }
                        else
                        {
                            order.Add(keys[i], int.Parse(TextBox1.Text));
                        }
                    }
                    
                }

                Session["order"] = order;
            }
            
        }

        private int countItems() 
        {
            Hashtable order;
            int ret = 0;
            if (Session["order"] != null)
            {
                order = (Hashtable)Session["order"];
                foreach( int val in order.Values)
                {
                    ret += val;
                }
            }
            return ret;
        }
    }
}