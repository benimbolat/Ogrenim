
not1=int(input("not1 : "))
not2=int(input("not2 : "))

ortalama=(not1 + not2)/2

print("Ortalamanız : ",ortalama)

if ortalama >= 50 and ortalama <= 100: {  # Eğer > 120 büyükmü 50 den >  true
    print("Dersi geçtin.")      # Eğer > 120 küçükmü 100 den > false
}
elif ortalama <= 49 and ortalama >=0 : { # eğer > 120  küçükmü 49 dan > false
    print(" dersten kaldi.")    # eğer 120 büyükmü 0 dan > True
}
else:{
    print ("hatali giriş.")
}