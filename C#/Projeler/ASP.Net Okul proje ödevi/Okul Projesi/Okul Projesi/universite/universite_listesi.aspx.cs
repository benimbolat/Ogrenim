using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class universite_universite_listesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OkulTableAdapters.universiteTableAdapter univ = new OkulTableAdapters.universiteTableAdapter();
        universiteList.DataSource = univ.UniversiteListesiGetir();
        universiteList.DataBind();
    }
}