import 'package:flutter/material.dart';

// Colors
// Neutral
Color black = const Color(0xFF040013);
Color white = const Color(0xFFF8F8F8);
Color grey = const Color(0xFFE8E8E8);

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

class Font {
  static TextStyle headline1(BuildContext context){
    return TextStyle(
      fontSize: text(8, context),
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5);
    }

  static TextStyle headline2(BuildContext context){
    return TextStyle(
      fontSize: text(12, context),
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5  );
    }

  static TextStyle headline3(BuildContext context){
    return TextStyle(
      fontSize: text(16, context),
      fontWeight: FontWeight.w400  );
    }

  static TextStyle headline4(BuildContext context){
    return TextStyle(
        fontSize: text(24, context),
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25  );
    }

  static TextStyle headline5(BuildContext context){
    return TextStyle(
        fontSize: text(32, context),
        fontWeight: FontWeight.w400  );
    }

  static TextStyle headline6(BuildContext context){
    return TextStyle(
        fontSize: text(40, context),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15  );
    }

  static TextStyle subtitle1(BuildContext context){
    return TextStyle(
            fontSize: text(48, context),    fontWeight: FontWeight.w400,    letterSpacing: 0.15  );
    }

  static TextStyle subtitle2(BuildContext context){
    return TextStyle(
            fontSize: text(56, context),    fontWeight: FontWeight.w500,    letterSpacing: 0.1  );
    }

  static TextStyle bodyText1(BuildContext context, {Color? color}){
    return TextStyle(
      color: color,
      fontSize: text(48, context),    fontWeight: FontWeight.w400,    letterSpacing: 0.5  );
    }

  static TextStyle bodyText2(BuildContext context, {Color? color}){
    return TextStyle(
      color: color,
      fontSize: text(56, context),    fontWeight: FontWeight.w400,    letterSpacing: 0.25  );
    }

  static TextStyle button(BuildContext context){
    return TextStyle(
      fontSize: text(56, context),    fontWeight: FontWeight.w500,    letterSpacing: 0.15  );
    }

  static TextStyle caption(BuildContext context){
    return TextStyle(
      fontSize: text(64, context),    fontWeight: FontWeight.w500,    letterSpacing: 1.25  );
    }

  static TextStyle overline(BuildContext context){
    return TextStyle(
      fontSize: text(72, context),
      fontWeight: FontWeight.w400,    
      letterSpacing: 1.5  );
    }
}
