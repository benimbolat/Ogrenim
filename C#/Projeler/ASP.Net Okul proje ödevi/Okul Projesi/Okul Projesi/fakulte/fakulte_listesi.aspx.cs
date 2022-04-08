using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Universite_universite_listesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OkulTableAdapters.fakulteTableAdapter fakulte = new OkulTableAdapters.fakulteTableAdapter();
        fakulteList.DataSource = fakulte.FakulteListesiGetir();
        fakulteList.DataBind();

    }
    public string universiteAdiGetir(int universite_id)
    {

        OkulTableAdapters.universiteTableAdapter univ = new OkulTableAdapters.universiteTableAdapter();
        string universiteAdi = "";
        try
        {
            universiteAdi = univ.UniversiteGetir(universite_id)[0].universite_adi;
        }
        catch
        {
            universiteAdi = "Üniversite Kayıtlardan Silinmiş";
        }

        return universiteAdi;
    }
}