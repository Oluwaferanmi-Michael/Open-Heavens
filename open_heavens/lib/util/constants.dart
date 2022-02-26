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

// Icons

Icon back = const Icon(Icons.chevron_left_rounded);
Icon menu = const Icon(Icons.menu);
Icon dropDown = const Icon(Icons.keyboard_arrow_down_rounded);
Icon search = const Icon(Icons.search_rounded);


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


// API links
String books = 'https://api.scripture.api.bible/v1/bibles/de4e12af7f28f599-01/books';

// Font Styles

TextStyle? primaryHeader(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.headline1(context, color: color, fontWeight: fontWeight);
 
TextStyle? secondaryHeader(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.headline2(context, color: color, fontWeight: fontWeight);

TextStyle? bodyText(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.headline3(context, color: color, fontWeight: fontWeight);

TextStyle? fieldText(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.bodyText1(context, color: color, fontWeight: fontWeight);

TextStyle? headerCaptions(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.headline4(context, color: color, fontWeight: fontWeight);

TextStyle? secondaryCaptions(BuildContext context, {Color? color, FontWeight? fontWeight}) => Font.headline5(context);

TextStyle? buttons(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.headline6(context, color: color, fontWeight: fontWeight);


// ```Ignore```/////////////////////////////////////////////////////////////////

TextStyle? bodyText2(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.bodyText2(context, color: color, fontWeight: fontWeight);

TextStyle? button(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.button(context, color: color, fontWeight: fontWeight);

TextStyle? overline(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.overline(context, color: color, fontWeight: fontWeight);

TextStyle? caption(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.caption(context, color: color, fontWeight: fontWeight);

TextStyle? onboardingHeader(BuildContext context,
        {Color? color, FontWeight? fontWeight}) => Font.subtitle1(context, color: color,);

TextStyle? onboardingsubTitle(BuildContext context, {Color? color,}) => Font.subtitle2(context, color: color);

// ```Ignore```/////////////////////////////////////////////////////////////////


// FontStyles
class Font {

  static TextStyle headline1(BuildContext context, { Color? color, FontWeight? fontWeight}){
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontSize:  16.sp,
      fontWeight: fontWeight,
      );
    }

  static TextStyle headline2(BuildContext context,
      {FontWeight? fontWeight, Color? color}){
   return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
    );
    }

  static TextStyle  headline3(BuildContext context,
      {FontWeight? fontWeight, Color? color}){
    return TextStyle(
      fontFamily: 'Poppins',
      color: black,
      fontWeight: FontWeight.w300,
      fontSize: 16.sp);
    }

  static TextStyle headline4(BuildContext context,
      {FontWeight? fontWeight, Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
        color: black,
        // fontWeight: FontWeight.bold,
        fontSize: 12.sp);
    }

  static TextStyle headline5(BuildContext context, {FontWeight? fontWeight, Color? color}){
    return TextStyle(
      fontFamily: 'Poppins',
        fontSize: 12.sp,
        color: color,
      fontWeight: fontWeight,
    );
    }

  static TextStyle headline6(BuildContext context, {FontWeight? fontWeight, Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
        fontSize: 16.sp,
        color: white,
      fontWeight: fontWeight,
       );
    }

  static TextStyle subtitle1(BuildContext context, {Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 24.sp,
      color: color,
      fontWeight: FontWeight.w600, );
    }

  static TextStyle subtitle2(BuildContext context, {Color? color, FontWeight? fontWeight}){
    return TextStyle(
      fontFamily: 'Poppins',
      color: color,
      fontSize: 12.sp,
      );
    }

  static TextStyle bodyText1(BuildContext context, {FontWeight? fontWeight, Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
      color: color,
      fontWeight: fontWeight,
      fontSize: text(16, context),
      letterSpacing: 0.5  );
    }

  static TextStyle bodyText2(BuildContext context, {FontWeight? fontWeight, Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(14, context),color: color,
      fontWeight: fontWeight,  letterSpacing: 0.25  );
    }

  static TextStyle button(BuildContext context, {FontWeight? fontWeight, Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(14, context),color: color,
      fontWeight: fontWeight,    letterSpacing: 0.15  );
    }

  static TextStyle caption(BuildContext context, {Color? color, FontWeight? fontWeight}){
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Montserrat',
      fontSize: text(12, context),
      letterSpacing: 1.25  );
    }

  static TextStyle overline(BuildContext context, {FontWeight? fontWeight, Color? color}){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: text(10, context),
      color: color,
      fontWeight: fontWeight,   
      letterSpacing: 1.5  );
    }
}
