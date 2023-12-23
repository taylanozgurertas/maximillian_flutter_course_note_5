import 'package:flutter/material.dart';
import 'package:flutter_application_5/dice_roller.dart';

final degiskenim = 0;
const ikinciDegiskenim = 0;

const baslangicAlignment = Alignment.topLeft;
const sonAlignment = Alignment.bottomRight;

final startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

Alignment? alignmentIste;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key}) : colors = [Colors.black, Colors.white];
  //? SECOND NAMED CONSTRUCTOR FUNCTION
  //bu şekilde ikincil bir constructor function oluşturabiliyoruz. isimli constructor function diyebiliriz buna
  //üst sınıa git colors bekliyor bizden listeyi bu şekilde ver şeklinde. yani GradientContainer.purple() yapınca colorsları belirttiğimiz şekilde verilir
  //kullanırken de GradientContainer.purple() diye kullanabiliriz. tıpkı bu şekilde Flutterda Image sınıfı vardır framework bunu bize verir resim göstermek
  //için oluşturulmuş bir sınıf. Image.asset diye bir constructor fonksiyonuna sahip böylece '' içerisinde pathi vererek hangi resmi göstereceğini söyleyebiliyoruz.
  //Güzel bir widget.

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: baslangicAlignment,
          end: sonAlignment,
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
