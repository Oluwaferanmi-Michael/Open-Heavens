import 'package:flutter/material.dart';

// Colors
// Neutral
Color black = const Color(0xFF040013);
Color white = const Color(0xFFF8F8F8);
Color grey = const Color(0xFFE8E8E8);
Color transparent = Colors.transparent;
// Brand
Color red = const Color(0xFFE1524C);
Color blue = const Color(0xFF28166F);
Color green = const Color(0xFF00923F);
Color gold = const Color(0xFFEFCD48);

// Sizes

double text(double n, BuildContext context) {
  return MediaQuery.of(context).size.width / n;
}

double height(double n, BuildContext context) {
  return MediaQuery.of(context).size.height / n;
}

double width(double n, BuildContext context) {
  return MediaQuery.of(context).size.width / n;
}




TextStyle? headline1(BuildContext context) => Theme.of(context).textTheme.headline1;

TextStyle? headline2(BuildContext context) =>
    Theme.of(context).textTheme.headline2;

TextStyle? headline3(BuildContext context) =>
  Theme.of(context).textTheme.headline3;

    TextStyle? headline4(BuildContext context) =>
    Theme.of(context).textTheme.headline4;

    TextStyle? headline5(BuildContext context) => Theme.of(context).textTheme.headline5;

    TextStyle? headline6(BuildContext context) => Theme.of(context).textTheme.headline6;
    TextStyle? bodyText1(BuildContext context) => Theme.of(context).textTheme.bodyText1;

    TextStyle? bodyText2(BuildContext context) => Theme.of(context).textTheme.bodyText2;

    TextStyle? button(BuildContext context) =>
    Theme.of(context).textTheme.button;

    TextStyle? overline(BuildContext context) =>
    Theme.of(context).textTheme.overline;

    TextStyle? caption(BuildContext context) =>
    Theme.of(context).textTheme.caption;

    TextStyle? subtitle1(BuildContext context) =>
    Theme.of(context).textTheme.subtitle1;

    TextStyle? subtitle2(BuildContext context) =>
    Theme.of(context).textTheme.subtitle2;

// FontStyles
class Font {


  static TextStyle headline1(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(8, context),
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5);
    }

  static TextStyle headline2(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(12, context),
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5  );
    }

  static TextStyle headline3(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(16, context),
      fontWeight: FontWeight.w400  );
    }

  static TextStyle headline4(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
        fontSize: text(24, context),
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25  );
    }

  static TextStyle headline5(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
        fontSize: text(32, context),
        fontWeight: FontWeight.w400  );
    }

  static TextStyle headline6(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
        fontSize: text(40, context),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15  );
    }

  static TextStyle subtitle1(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
            fontSize: text(48, context),    fontWeight: FontWeight.w400,    letterSpacing: 0.15  );
    }

  static TextStyle subtitle2(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
            fontSize: text(56, context),    fontWeight: FontWeight.w500,    letterSpacing: 0.1  );
    }

  static TextStyle bodyText1(BuildContext context, {Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontSize: text(48, context),    fontWeight: FontWeight.w400,    letterSpacing: 0.5  );
    }

  static TextStyle bodyText2(BuildContext context, {Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontSize: text(56, context),    fontWeight: FontWeight.w400,    letterSpacing: 0.25  );
    }

  static TextStyle button(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(56, context),    fontWeight: FontWeight.w500,    letterSpacing: 0.15  );
    }

  static TextStyle caption(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(64, context),    fontWeight: FontWeight.w500,    letterSpacing: 1.25  );
    }

  static TextStyle overline(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(72, context),
      fontWeight: FontWeight.w400,    
      letterSpacing: 1.5  );
    }
}
