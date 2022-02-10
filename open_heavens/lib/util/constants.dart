import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  return n.sp;
}

double height(double n, BuildContext context) {
  return MediaQuery.of(context).size.height / n;
}

double width(double n, BuildContext context )  {
  return MediaQuery.of(context).size.width / n;
}




TextStyle? headline1(BuildContext context, {FontWeight? fontWeight}) => Font.headline1(context, fontWeight: fontWeight);

TextStyle? headline2(BuildContext context) => Font.headline2(context);

TextStyle? headline3(BuildContext context) => Font.headline3(context);

TextStyle? headline4(BuildContext context) => Font.headline4(context);

TextStyle? headline5(BuildContext context) => Font.headline5(context);

TextStyle? headline6(BuildContext context) => Font.headline6(context);

TextStyle? bodyText1(BuildContext context, {Color? color}) => Font.bodyText1(context, color: color);

TextStyle? bodyText2(BuildContext context) => Font.bodyText2(context);

TextStyle? button(BuildContext context) => Font.button(context);

TextStyle? overline(BuildContext context) => Font.overline(context);

TextStyle? caption(BuildContext context) => Font.caption(context);

TextStyle? subtitle1(BuildContext context) => Font.subtitle1(context);

TextStyle? subtitle2(BuildContext context) => Font.subtitle2(context);

// FontStyles
class Font {

  static TextStyle headline1(BuildContext context, {FontWeight? fontWeight, Color? color}){
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontSize: text(97, context),
      fontWeight: fontWeight,
      letterSpacing: -1.5);
    }

  static TextStyle headline2(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(61, context),
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5  );
    }

  static TextStyle headline3(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(48, context),
      fontWeight: FontWeight.w400  );
    }

  static TextStyle headline4(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
        fontSize: text(34, context),
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25  );
    }

  static TextStyle headline5(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
        fontSize: text(24, context),
        fontWeight: FontWeight.w400  );
    }

  static TextStyle headline6(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
        fontSize: text(20, context),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15  );
    }

  static TextStyle subtitle1(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
            fontSize: text(16, context),    fontWeight: FontWeight.w400,    letterSpacing: 0.15  );
    }

  static TextStyle subtitle2(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
            fontSize: text(14, context),    fontWeight: FontWeight.w500,    letterSpacing: 0.1  );
    }

  static TextStyle bodyText1(BuildContext context, {Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontSize: text(16, context),    fontWeight: FontWeight.w400,    letterSpacing: 0.5  );
    }

  static TextStyle bodyText2(BuildContext context, {Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontSize: text(14, context),    fontWeight: FontWeight.w400,    letterSpacing: 0.25  );
    }

  static TextStyle button(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(14, context),    fontWeight: FontWeight.w500,    letterSpacing: 0.15  );
    }

  static TextStyle caption(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(12, context),    fontWeight: FontWeight.w500,    letterSpacing: 1.25  );
    }

  static TextStyle overline(BuildContext context){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(10, context),
      fontWeight: FontWeight.w400,    
      letterSpacing: 1.5  );
    }
}
