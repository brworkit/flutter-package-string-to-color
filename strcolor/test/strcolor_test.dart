import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:strcolor/strcolor.dart';

void main() {
  test('supports all flutter colors', () {

    Colors.accents.forEach((element) { 
        expect(COLORS.values.contains(element), true);
    });

    print("supports " + Colors.accents.length.toString() + " accents color.");

    Colors.primaries.forEach((element) { 
        expect(COLORS.values.contains(element), true);
    });

    print("supports " + Colors.primaries.length.toString() + " primaries color.");

    final names = COLORS.keys.toList();
    names.sort();

    names.forEach((key) { 
        // print("name: " + key + " value: " + value.toString());
        print("* " + key);
    });

    print("supports " + COLORS.values.length.toString() + " total colors.");

  });
}
