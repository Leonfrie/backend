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
        litVandaag.Text = DateTime.Now.ToString("dd-MM-yyyy");
        litTijd.Text = DateTime.Now.ToString("HH:mm");
        
     
    
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

    protected void buttonVervers_Click1(object sender, EventArgs e)
    {
   
    }

    protected void buttonVervers_Click(object sender, EventArgs e)
    {
        DateTime daysLeft = DateTime.Parse("12/04/2017");
        DateTime startDate = DateTime.Now;
        TimeSpan t = daysLeft - startDate;
        double uren = t.Hours;
        double uren1 = uren * 24;
        double minuten = t.Minutes;
        double seconden = t.Seconds;
        litUren.Text = Convert.ToString(uren1);
        litMinuten.Text = Convert.ToString(minuten);
        litSeconden.Text = Convert.ToString(seconden);
    }

}