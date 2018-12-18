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
                lbl.Text = (imie.Text != "" ? "Imię: " + imie.Text + "<br />" : "")
                + (nazw.Text != "" ? "Nazwisko: " + nazw.Text + "<br />" : "")
                + (log.Text != "" ? "Login: " + log.Text + "<br />" : "")
                + (pass.Text != "" ? "Hasło: #zakodowane" + "<br />" : "")
                + (email.Text != "" ? "Email: " + email.Text + "<br />" : "")
                + (lata.Text != ""? "Doświadczenie: " + lata.Text:"");               
                lbl.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label lbl = (Label)register_form.FindControl("Label1");
            if (lbl != null)
            {
                lbl.Text = (imie.Text != "" ? "Imię: " + imie.Text + "<br />" : "")
                + (nazw.Text != "" ? "Nazwisko: " + nazw.Text + "<br />" : "")
                + (log.Text != "" ? "Login: " + log.Text + "<br />" : "")
                + (pass.Text != "" ? "Hasło: #zakodowane" + "<br />" : "")
                + (email.Text != "" ? "Email: " + email.Text + "<br />" : "")
                + (lata.Text != "" ? "Doświadczenie: " + lata.Text : "");               
                lbl.Visible = true;
            }
        }
    }
}