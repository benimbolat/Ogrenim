<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="assets/css/styles.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
     <script src="/assets/scripts.js"></script>

</head>
<body>
     <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">Start Bootstrap</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/universite/universite_listesi.aspx">Üniversite İşlemleri</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/fakulte/fakulte_listesi.aspx">Fakülte İşlemleri</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/bolum/bolum_listesi.aspx">Bölüm İşlemleri</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/ogrenci/ogrenci_listesi.aspx">Öğrenci İşlemleri</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/profesor/profesor_listesi.aspx">Profesör İşlemleri</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">Yardım</a>
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
               
                <!-- Page content-->
                <div class="container-fluid">
                    <h3>YAZMA YERİ</h3>
                   
                </div>
            </div>
        </div> 
</body>
</html>