using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class universite_universite_sil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);

        OkulTableAdapters.universiteTableAdapter univ = new OkulTableAdapters.universiteTableAdapter();

        univ.UniversiteSil(id);
        Response.Redirect("/Universite/universite_listesi.aspx");

    }
}