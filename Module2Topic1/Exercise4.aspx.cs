using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Get the inputted values
                string fullName = this.fullName.Text;
                string age = this.age.Text;
                string email = this.email.Text;

                // Display the inputted values in the "result" label
                result.Text = $"Full Name: {fullName}<br />" +
                              $"Age: {age}<br />" +
                              $"Email: {email}";
            }
        }
    }
}
