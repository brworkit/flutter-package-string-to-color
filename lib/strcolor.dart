library strcolor;

// Needed to access Color
import 'package:flutter/material.dart';

// This is the source of mapped Flutter colors
const Map<String, Color> SOURCE = {
  "transparent": Colors.transparent,
  "black": Colors.black,
  "white": Colors.white,
  "green": Colors.green,
  "greenAccent": Colors.greenAccent,
  "lightGreen": Colors.lightGreen,
  "lightGreenAccent": Colors.lightGreenAccent,
  "blue": Colors.blue,
  "blueAccent": Colors.blueAccent,
  "blueGrey": Colors.blueGrey,
  "lightBlue": Colors.lightBlue,
  "lightBlueAccent": Colors.lightBlueAccent,
  "red": Colors.red,
  "redAccent": Colors.redAccent,
  "orange": Colors.orange,
  "orangeAccent": Colors.orangeAccent,
  "deepOrange": Colors.deepOrange,
  "deepOrangeAccent": Colors.deepOrangeAccent,
  "brown": Colors.brown,
  "amber": Colors.amber,
  "amberAccent": Colors.amberAccent,
  "yellow": Colors.yellow,
  "yellowAccent": Colors.yellowAccent,
  "cyan": Colors.cyan,
  "cyanAccent": Colors.cyanAccent,
  "purple": Colors.purple,
  "purpleAccent": Colors.purpleAccent,
  "deepPurple": Colors.deepPurple,
  "deepPurpleAccent": Colors.deepPurpleAccent,
  "grey": Colors.grey,
  "indigo": Colors.indigo,
  "indigoAccent": Colors.indigoAccent,
  "lime": Colors.lime,
  "limeAccent": Colors.limeAccent,
  "pink": Colors.pink,
  "pinkAccent": Colors.pinkAccent,
  "teal": Colors.teal,
  "tealAccent": Colors.tealAccent
};

// This extesion provide the hability of String extending to makes easier the use of the API
extension StringToColor on String {

  // substring start to find the real hexa value
  static final start = 1;
  // substring end to find the real hexa value
  static final end = 7;
  // hexa base 
  static final radix = 16;
  // complement to the 32-bits number
  static final complement = 0xFF000000;

  // The function that bind the color from hexa into a Flutter Color
  colorFromHex() {    
    return Color(int.parse(this.substring(start, end), radix: radix) + complement);
  }

  // The function that bind the color name into a Flutter Color
  color() {
    try {
      if (SOURCE.containsKey(this)) {
        return SOURCE[this];
      }
      return this.colorFromHex();
    } catch (e) {
      return Colors.transparent;
    }
  }
}

// This extesion provide the hability of Color extending to makes easier the use of the API to compute contrast
extension ContrastToColor on Color {
  // half brightness to compute luminance 
  static final brightness = 0.5;
  // The function that calculate human brightness perception to expose better contrast against the color
  contrast() {
    try {
      return this.computeLuminance() > brightness ? Colors.black87 : Colors.white;
    } catch (e) {
      return Colors.white;
    }
  }
  
}
