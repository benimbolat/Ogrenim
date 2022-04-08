using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class universite_universite_ekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            OkulTableAdapters.universiteTableAdapter univ = new OkulTableAdapters.universiteTableAdapter();
            string universiteAdi = univ.UniversiteGetir(id)[0].universite_adi;
            txtUniversiteAdi.Text = universiteAdi;
        }
    }
    protected void btnKaydet_Click2(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"].ToString());

        OkulTableAdapters.universiteTableAdapter univ = new OkulTableAdapters.universiteTableAdapter();

        univ.UniversiteGuncelle(txtUniversiteAdi.Text, id);
        Response.Redirect("/universite/universite_listesi.aspx");
    }
}