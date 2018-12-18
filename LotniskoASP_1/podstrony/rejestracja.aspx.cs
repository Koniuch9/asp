using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LotniskoASP_1.podstrony
{
    public partial class rejestracja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label lbl = (Label)register_form.FindControl("Label1");
            if (lbl != null) lbl.Visible = false;
            if (IsPostBack) 
            {
                lbl.Text = "Imię: " + imie.Text + "<br />" + "Nazwisko: " + nazw.Text + "<br />" + "Login: " + log.Text + "<br />" + "Hasło: #zakodowane"  + "<br />" + "Email: " + email.Text;               
                lbl.Visible = true;
            }
        }
    }
}