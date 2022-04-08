using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Universite_universite_ekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            OkulTableAdapters.universiteTableAdapter univ = new OkulTableAdapters.universiteTableAdapter();
            universiteCombo.Items.Clear();
            universiteCombo.Items.Add(new ListItem("Üniversite Seçiniz...", ""));
            universiteCombo.AppendDataBoundItems = true;
            universiteCombo.DataSource = univ.UniversiteListesiGetir();
            universiteCombo.DataTextField = "universite_adi";
            universiteCombo.DataValueField = "universite_id";
            universiteCombo.DataBind();
        }


    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        OkulTableAdapters.fakulteTableAdapter fakulte = new OkulTableAdapters.fakulteTableAdapter();
        int universiteID = Convert.ToInt32(universiteCombo.SelectedItem.Value);
        fakulte.FakulteEkle(txtfakulteAdi.Text, universiteID);
        Response.Redirect("/fakulte/fakulte_listesi.aspx");
    }
}