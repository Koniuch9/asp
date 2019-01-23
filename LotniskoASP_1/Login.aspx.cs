using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace LotniskoASP_1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginConfirm_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(loginLogin.Text, loginPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(loginLogin.Text, true); 
                
            }
            else 
            {
                Label3.Text = "nieprawidłowy login lub hasło";
            }
        }
    }
}