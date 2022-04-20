void main(List<String> args) {
  int classDegre = 5;
  bool isSucess = false;

  switch (classDegre) {
    case 2:
      print("Bravo");
      isSucess = true;
      break;
    case 1:
      print("olur");
      isSucess = true;

      break;
    case 0:
      print("yeterli");
      isSucess = true;

      break;
    default:
      print("Başarısız");
      isSucess = false;
      break;
  }
  print("Çoçuğunuzun durumu : $isSucess");
}
