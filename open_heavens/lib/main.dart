import 'package:flutter/material.dart';
import 'package:open_heavens/Screens/navigation.dart';
import 'package:open_heavens/util/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        textTheme: const TextTheme(
          headline1: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
          headline2: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
          headline3:
              TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 48, fontWeight: FontWeight.w400),
          headline4: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          headline5:
              TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24, fontWeight: FontWeight.w400),
          headline6: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.15),
          subtitle1: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
          subtitle2: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
          bodyText1: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
          bodyText2: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          button: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
          caption: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
          overline: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ),

        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: blue),  
        ),
        iconTheme: IconThemeData(
          color: blue
        ),
        fontFamily: 'Montserrat',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Navigation(),
    );
  }
}
