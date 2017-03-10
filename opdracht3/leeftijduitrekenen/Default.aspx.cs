using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime now = DateTime.Today;

        int bday = kalVerjaardag.SelectedDate.Year;
        int age = now.Year - bday;

        Label2.Text = age.ToString();

    }

    protected void kalVerjaardag_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = kalVerjaardag.SelectedDate.ToShortDateString();
    }
}