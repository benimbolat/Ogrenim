def carpım(a,b):
    sonuc=a*b
    if sonuc>0 :
        print("Sayı Pozitif")
    elif sonuc<0 :
        print("Sayı Negatif")
    else :
        print("Sayı 0'dır")



sayi1 =int(input("İlk sayıyı girin lütfen : "))
sayi2=int(input("İkinci sayıyı girin lütfen :"))
carpım(sayi1,sayi2)