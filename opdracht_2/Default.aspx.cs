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

    protected void rbGeslacht_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnMaakKaart_Click(object sender, EventArgs e)
    {
        string Naam, Geslacht, Hobby, Opleiding;
        Naam = txtNaam.Text;
        Geslacht = rbGeslacht.SelectedValue;
        Opleiding = cbOpleiding.SelectedValue;
        Hobby = "hobby: ";
        if (chkHobby.SelectedValue=="1")
        {
            Hobby += "gamen ";
        }
        if (chkHobby.SelectedValue=="2")
        {
            Hobby += "Programmeren";
        }
        Response.Write("Naam: " + Naam + "<br />");
        Response.Write(Hobby + "<br />");
        Response.Write("Opleiding: " + Opleiding + "<br />");
        Response.Write("geslacht: " + Geslacht + "<br />");
    }

    protected void showFormulier_SelectedIndexChanged(object sender, EventArgs e)
    {



        if (showFormulier.SelectedValue == "1")
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
}