import 'package:flutter/material.dart';

//! INTRODUCTION TO STATEFUL WIDGET.

/*
If we use StatefulWidget we should use createState it returns a state object. thats built into flutter
State<> which kind of state <> 
we are creating our DiceRoller class so we want to say like this State<DiceRoller> which means DiceRoller state. 

when using stateful widget you will always work with two classes 
the second class is like _DiceRollerState this _ is a special meaning in Dart it means that this class will be private 
even if you import this file into another file other file cant access that _DiceRollerState class. 

çünkü state classı DiceRoller için kullanılacak internally. 

flutter stateful mantığı bu şekilde 2 classlı şekilde çalışıyor. 

flutterda activeDiceImage gibi bir değişken yaptık ve bunu bir butonla değiştirdiğimizde değişikliği fluttera bildirmek
gerekir yoksa anlamaz hatta hiçbir dilde de bu değişikliği algılamaz programlama böyle çalışmıyor

buildmetodu ilk başta program çalıştığında main.dart tan başlar widget tree oluşmaya başlar ve oluştuğunda 
activeDiceImage ilk değerini alır ve henüz butona tıklanmadığı için değişmez de ui verilir ekrana 
daha sonra build metodunun yenilenmesi gerekir ki butona tıklandıktan sonra yani algılansın değişiklik diye. 
setState fonksiyonumuz var flutter tarafından bize verilen. 
setState() içinde de anonymous fonksiyon olmalıdır. bu fonksiyon içinde değişiklikleri vermemiz gerekir fluttera build metodunu
tekrar çalıştırmasını söyler böylece farklı bir ui gösterilir. 

setState fonksiyonu Flutter'da kullanıldığında, sadece ilgili widget'in alt ağacındaki widget'lar rebuild edilir. Yani, sadece setState içindeki kod bloğunun içinde yer alan widget ve altındaki widget'lar tekrar oluşturulur.

setState fonksiyonu, sadece içindeki kod bloğu çalıştığında widget'i rebuild ettiği için, 
performans açısından sadece güncellenmesi gereken widget'lar yeniden oluşturulur. 
Bu sayede, uygulamanın genel performansını artırmak adına gereksiz yere tüm UI'nin güncellenmesi engellenir.

Ancak, setState fonksiyonunun kullanımına dikkat edilmesi önemlidir.
Eğer çok geniş bir widget ağacını etkileyen bir güncelleme yapılıyorsa, 
bu durumda performans kaybı yaşanabilir. Bu gibi durumlar için, 
daha spesifik güncelleme yöntemleri düşünülebilir,
örneğin Provider veya Riverpod gibi state yönetim kütüphaneleri kullanarak
yalnızca ilgili widget'ların güncellenmesini sağlamak mümkündür.


 */

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage = "assets/dice-2.png";

  void rollDice() {
    setState(() {
      activeDiceImage = "assets/dice-4.png";
    });
  }

  //bu class da State<DiceRoller> dan türüyor
  @override
  Widget build(context) {
    return Column(
      // eger bir seyler vermezsek default olarak bulunan bütün dikey alana yayılır.
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
        // ElevatedButton(onPressed: onPressed, child: child) //arkaplan rengi ve gölgesi olan buton
        // OutlinedButton(onPressed: onPressed, child: child) //arkaplan rengi yok çerçeve gibi buton

        //fonksiyon bekliyor bizden veya null.
        //dart dilinde fonksiyonlar da tıpkı valuelar gibi objelerdir.
        //void start() {} diye gider örnek bi fonksiyondur mesela
        // start(); diye çağrılır
        // bir fonksiyonu değer olarak kullanma TextButton(onPressed: start) şeklinde kullanılabilir
        //direkt onPressed in hemen karşısına da fonksiyon tanımlayabiliriz (){} diyerek buna da anonymous function denir
        //onPressed: rollDice şeklinde rollDice bizim üstte tanımladığımız fonksiyon. bu şekilde pointer gibi kullanımı da yapabiliriz.
        const SizedBox(
          //sizedbox has a fixed width and height
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll dice")) // text gibi görünen ama tıklanabilen buton
      ],
    );
  }
}
