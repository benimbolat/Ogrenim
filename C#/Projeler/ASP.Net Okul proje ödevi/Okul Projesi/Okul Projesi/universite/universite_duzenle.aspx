<%@ Page Language="C#" AutoEventWireup="true" CodeFile="universite_duzenle.aspx.cs" Inherits="universite_universite_ekle" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Simple Sidebar - Start Bootstrap Template</title>
    <link rel="icon" type="image/x-icon" href="../assets/assets/favicon.ico" />
    <link href="../assets/css/styles.css" rel="stylesheet" />
    <script src="../assets/js/scripts.js"></script>
</head>
<body>
    <div class="d-flex" id="wrapper">
        <div class="border-end bg-white" id="sidebar-wrapper">
            <div class="sidebar-heading border-bottom bg-light">Okul Otomasyon Projesi</div>
            <div class="list-group list-group-flush">
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Dashboard</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/universite/universite_listesi.aspx">Üniversite İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/fakulte/fakulte_listesi.aspx">Fakülte İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/bolum/bolum_listesi.aspx">Bölüm İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/ogrenci/ogrenci_listesi.aspx">Öğrenci İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/profesor/profesor_listesi.aspx">Profesör İşlemleri</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="">Yardım</a>
            </div>
        </div>
        <div id="page-content-wrapper">

            <!-- Kullanıcı Etkileşim Bölümü-->
            <div class="container-fluid">
                <form id="form1" runat="server">
                    <h3>Üniversite Düzenle</h3>
                    <div class="form-group">
                        <br />
                        <label for="txtUniversiteAdi">Üniversite Adı</label>
                        <asp:TextBox runat="server" ID="txtUniversiteAdi" CssClass="form-control" placeholder="Kütahya Üniversitesi.." />
                    </div>
                    <br />
                    <asp:Button Text="Kaydet" ID="btnKaydet" runat="server" CssClass="btn btn-success" OnClick="btnKaydet_Click2" />
                    <a class="btn btn-danger" href="/Universite/universite_listesi.aspx">İptal</a>
                </form>
            </div>
        </div>
    </div>
    <!-- Bootstrap çekirdek uzantısı-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
