<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fakulte_ekle.aspx.cs" Inherits="Universite_universite_ekle" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="icon" type="image/x-icon" href="../assets/assets/favicon.ico" />
    <link href="../assets/css/styles.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/js/scripts.js"></script>

</head>
<body>
    <div class="d-flex" id="wrapper">
        <div class="border-end bg-white" id="sidebar-wrapper">
            <div class="sidebar-heading border-bottom bg-light">Okul Otomasyon Projesi</div>
            <div class="list-group list-group-flush">

                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/universite/universite_listesi.aspx">Üniversite İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/fakulte/fakulte_listesi.aspx">Fakülte İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/bolum/bolum_listesi.aspx">Bölüm İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/ogrenci/ogrenci_listesi.aspx">Öğrenci İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/profesor/profesor_listesi.aspx">Profesör İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">Yardım</a>
            </div>
        </div>
        <div id="page-content-wrapper">

            <!-- Kullanıcı Etkileşim Bölümü-->
            <div class="container-fluid">
                <form id="form1" runat="server">
                    <h3>Fakülte Ekle</h3>
                    <div class="form-group">
                        <br />
                        <label for="txtUniversiteID">Üniversite Adı</label>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="universiteCombo" AutoPostBack="true">
                        </asp:DropDownList>
                        <div class="form-group">
                            <br />
                            <label for="txtfakulteAdi">Fakülte Adı</label>
                            <asp:TextBox runat="server" ID="txtfakulteAdi" CssClass="form-control" placeholder="Mühendislik / Mimarlık Fakültesi.." />
                        </div>
                        <br />
                        <asp:Button Text="Kaydet" ID="btnKaydet" runat="server" CssClass="btn btn-success" OnClick="btnKaydet_Click" />
                        <a class="btn btn-danger" href="/Fakulte/fakulte_listesi.aspx">İptal</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>









