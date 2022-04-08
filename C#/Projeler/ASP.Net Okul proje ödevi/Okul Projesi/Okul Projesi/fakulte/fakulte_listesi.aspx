<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fakulte_listesi.aspx.cs" Inherits="Universite_universite_listesi" %>

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
        <!-- Sidebar-->
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
                    <h3>Fakülte Listesi</h3>
                    <table class="table table-hover tab-content">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Fakülte Adı</th>
                                <th>Üniversite Adı</th>
                                <th>İşlemler</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater runat="server" ID="fakulteList">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("fakulte_id") %></td>
                                        <td><%#Eval("fakulte_ad") %></td>
                                        <td><%#universiteAdiGetir(Convert.ToInt32(Eval("universite_id"))) %></td>
                                        <td>
                                            <asp:HyperLink NavigateUrl='<%# "fakulte_sil.aspx?id=" + Eval("fakulte_id") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                            <asp:HyperLink NavigateUrl='<%# "fakulte_duzenle.aspx?id=" + Eval("fakulte_id")  %>' runat="server" CssClass="btn btn-success">Düzenle</asp:HyperLink>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                    <a class="btn btn-primary" href="/Fakulte/fakulte_ekle.aspx">Fakülte Ekle</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
