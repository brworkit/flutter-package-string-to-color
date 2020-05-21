library strcolor;

// Needed to access Color
import 'package:flutter/material.dart';

// This is the source of mapped Flutter colors
const Map<String, Color> COLORS = {
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
  // The function that bind the color name into a Flutter Color
  color() {
    return COLORS.containsKey(this) ? COLORS[this] : Colors.transparent;
  }
}
