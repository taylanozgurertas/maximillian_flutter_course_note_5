import 'package:flutter/material.dart';
import 'package:flutter_application_5/gradient_container.dart';

/*
assets klasörü oluşturduk projeye resimleri ekledik.
pubspec.yaml a gittik 

assets:
    - assets/

diye belirttik. 

şimdi gradient_container.dart'a git ve second named constructor function kısmını oku gel.

Column ve Row widgetları ekranda multiple widget göstermeye yarar.
Columnın main axisi dikeydir yani vertical 
Rowun main axisi yataydır yani horizontal

gradient_container.dart dosyasında kullanalım.

If we use internally changing data, and if it effects rendered UI then we should use StatefulWidget

!INTRODUCTION STATEFUL WIDGETS

allow us to manage the state. state simply is data and if the data changes the user interface should change. 
?go to dice_roller.dart

setState mantığını öğrendik. 


 */

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.deepPurple, Colors.blueAccent],
        ),
      ),
    ),
  );
}
