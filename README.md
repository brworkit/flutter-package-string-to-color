# strcolor

<a href="https://pub.dev/packages/strcolor">
   <img alt="Dart Pub" src="https://img.shields.io/pub/v/strcolor.svg?color=green&style=flat-square" />
</a>

## Description
Flutter package to convert color names to Color in Flutter.

Offers a handful way to use colors using their names instead of using Colors constants.

It is specialy useful when you need to place color in a component comming from server. 

You don't need to build any **from-to** structure to support it, you just need to use like **"green".color()** and 
you'll have Colors.green in your Widget. 

All Flutter **Colors** constants supported.

# Getting Started 
In your flutter project add the dependency:

dependencies:
  ...
  strcolor: ^1.0.0

For help getting started with Flutter, view the online documentation.

# Usage example 

```dart
import 'package:strcolor/strcolor.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: "purple".color(), // write the color name. When you receive dynamic color name from server this is much more useful.        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
```

## Source Code

[string-to-color](https://github.com/brworkit/flutter-package-string-to-color)

## Author

[**brworkit**](https://github.com/brworkit).