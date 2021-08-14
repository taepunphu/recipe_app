import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe App',
        theme: ThemeData(
            //backgroundColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: HomeScreen());
  }
}
