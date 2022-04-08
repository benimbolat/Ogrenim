using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fakulte_fakulte_sil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);

        OkulTableAdapters.fakulteTableAdapter fakulte = new OkulTableAdapters.fakulteTableAdapter();
        fakulte.FakulteSil(id);
        Response.Redirect("/fakulte/fakulte_listesi.aspx");
    }
}