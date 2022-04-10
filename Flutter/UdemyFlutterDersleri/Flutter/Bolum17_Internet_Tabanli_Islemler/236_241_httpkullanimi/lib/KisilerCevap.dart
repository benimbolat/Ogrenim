import 'package:httpkullanimi/Kisiler.dart';

class KisilerCevap {
  int success;
  List<Kisiler> kisilerListesi;

  KisilerCevap(this.success, this.kisilerListesi);

  factory KisilerCevap.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["kisiler"] as List;

    List<Kisiler> kisilerListesi = jsonArray
        .map((jsonArrayNesnesi) => Kisiler.fromJson(jsonArrayNesnesi))
        .toList();

    return KisilerCevap(json["succes"] as int, kisilerListesi);
  }
}
