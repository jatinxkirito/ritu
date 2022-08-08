import 'package:flutter/material.dart';
import 'load.dart';
void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(colorScheme: ColorScheme(brightness: Brightness.light, primary: Color(0xFF1c99e6), onPrimary: Colors.white, secondary: Color(0xFFc0fffd), onSecondary: Colors.white, error: Color(0xFFc0fffd), onError: Colors.white, background: Color(0xFF1c99e6), onBackground: Colors.white, surface: Color(0xFFc0fffd), onSurface: Colors.white)),
       home: lod()
    );
  }
}
