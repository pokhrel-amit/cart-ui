import 'package:cart_ui/mainPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor:const Color.fromARGB(255, 46, 207, 172),
          scaffoldBackgroundColor:  Color.fromARGB(255, 10, 189, 189),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 10, 189, 189),
          )),
      home: MainPage(),
    );
  }
}
