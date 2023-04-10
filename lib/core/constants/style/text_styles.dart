import 'package:flutter/painting.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';

class ApplicationTextStyle{
  static String defaultFontFamily = 'dana';
  static TextStyle subtext1 = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.colorLightText,fontWeight: FontWeight.w500);
  static TextStyle listTitle = TextStyle(fontFamily: defaultFontFamily,fontSize: 16,color: SolidColors.colorTitle,fontWeight: FontWeight.w200);
  static TextStyle userProfileOption = TextStyle(fontFamily: defaultFontFamily,fontSize: 14,color: SolidColors.colorTextTitle,fontWeight: FontWeight.w200);
}