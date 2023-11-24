import 'package:flutter/material.dart';

class TextStyles {
  // static TextStyle buildAppBarTexStyle() {
  //   return TextStyle(fontSize: 16, color: MyTheme.dark_font_grey,fontWeight: FontWeight.w700);
  // }

  static TextStyle desktopLargeTitleTexStyle() {
    return TextStyle(fontSize: 26, color:Colors.black,fontWeight: FontWeight.w600);
  }

  static TextStyle mobileLargeTitleTexStyle() {
    return TextStyle(fontSize: 16, color:Colors.black,fontWeight: FontWeight.w600);
  }

  static TextStyle desktopMediumTitleTextStyle(){
    return TextStyle(fontWeight:FontWeight.w600,fontSize: 14,color: Colors.black);
  }

  static TextStyle mobileMediumTitleTextStyle(){
    return TextStyle(fontWeight:FontWeight.w500,fontSize: 14,color: Colors.black);
  }

  static TextStyle desktopVerySmallTitleTexStyle() {
    return TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.black);
  }

  static TextStyle desktopTableHeadingTexStyle() {
    return TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black);
  }
  // static TextStyle smallTitleTexStyle() {
  //   return TextStyle(fontSize: 13, color: MyTheme.dark_font_grey,fontWeight: FontWeight.w700);
  // }
  //

  //
  // static TextStyle largeBoldAccentTexStyle() {
  //   return TextStyle(fontSize: 16, color: MyTheme.accent_color,fontWeight: FontWeight.w700);
  // }
  //
  // static TextStyle smallBoldAccentTexStyle() {
  //   return TextStyle(fontSize: 13, color: MyTheme.accent_color,fontWeight: FontWeight.w700);
  // }

}
