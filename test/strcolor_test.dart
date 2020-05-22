import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:strcolor/strcolor.dart';

void main() {
  test('supports all flutter accent colors', () {
    Colors.accents.forEach((element) {
      expect(SOURCE.values.contains(element), true);
    });
  });

  test('supports all flutter primaries colors', () {
    Colors.primaries.forEach((element) {
      expect(SOURCE.values.contains(element), true);
    });
  });

  test('returns transparent if no color name is found', () {
    Colors.primaries.forEach((element) {
      expect("not-a-color".color(), Colors.transparent);
    });
  });

  test('supports transparent color', () {
    expect("transparent".color(), Colors.transparent);
  });

  test('supports all specified colors name different from transparent', () {
    final names = [
      "amber",
      "amberAccent",
      "black",
      "blue",
      "blueAccent",
      "blueGrey",
      "brown",
      "cyan",
      "cyanAccent",
      "deepOrange",
      "deepOrangeAccent",
      "deepPurple",
      "deepPurpleAccent",
      "green",
      "greenAccent",
      "grey",
      "indigo",
      "indigoAccent",
      "lightBlue",
      "lightBlueAccent",
      "lightGreen",
      "lightGreenAccent",
      "lime",
      "limeAccent",
      "orange",
      "orangeAccent",
      "pink",
      "pinkAccent",
      "purple",
      "purpleAccent",
      "red",
      "redAccent",
      "teal",
      "tealAccent",
      "white",
      "yellow",
      "yellowAccent",
      "amber",
      "amberAccent",
      "black",
      "blue",
      "blueAccent",
      "blueGrey",
      "brown",
      "cyan",
      "cyanAccent",
      "deepOrange",
      "deepOrangeAccent",
      "deepPurple",
      "deepPurpleAccent",
      "green",
      "greenAccent",
      "grey",
      "indigo",
      "indigoAccent",
      "lightBlue",
      "lightBlueAccent",
      "lightGreen",
      "lightGreenAccent",
      "lime",
      "limeAccent",
      "orange",
      "orangeAccent",
      "pink",
      "pinkAccent",
      "purple",
      "purpleAccent",
      "red",
      "redAccent",
      "teal",
      "tealAccent",
      "white",
      "yellow",
      "yellowAccent",
      "amber",
      "amberAccent",
      "black",
      "blue",
      "blueAccent",
      "blueGrey",
      "brown",
      "cyan",
      "cyanAccent",
      "deepOrange",
      "deepOrangeAccent",
      "deepPurple",
      "deepPurpleAccent",
      "green",
      "greenAccent",
      "grey",
      "indigo",
      "indigoAccent",
      "lightBlue",
      "lightBlueAccent",
      "lightGreen",
      "lightGreenAccent",
      "lime",
      "limeAccent",
      "orange",
      "orangeAccent",
      "pink",
      "pinkAccent",
      "purple",
      "purpleAccent",
      "red",
      "redAccent",
      "teal",
      "tealAccent",
      "white",
      "yellow",
      "yellowAccent"
    ];

    names.forEach((name) {
      expect(name.color() != Colors.transparent, true);
    });
  });

  test('white hexacolor is returned succesfull', () {
    expect("#FFFFFF".color(), Colors.white);
  });

  test('black hexacolor is returned succesfull', () {
    expect("#000000".color(), Colors.black);
  });

  test('random valid hexacolor is returned insteado of transparent color', () {
    expect("#0E8F12".color() != Colors.transparent, true);
  });

  test('contrast color over black is white', () {
    expect(Colors.black.contrast(), Colors.white);
  });

  test('contrast color over white is black87', () {
    expect(Colors.white.contrast(), Colors.black87);
  });
}
