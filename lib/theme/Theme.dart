import 'dart:ui';
import 'package:flutter/material.dart';

//写法1字体很小


final darkThemeCNAF = ThemeData(
  primaryColor: Colors.pink[400],
  accentColor: Colors.cyan[600],
  fontFamily: 'SourceHanSansMedium',
  backgroundColor: CustomColors.backgroundIndex4,
  scaffoldBackgroundColor: CustomColors.backgroundIndex5,
);
Map themeMap = {
  "light": {
    "textColor": Colors.black,
    "bgColor": Colors.white,
  },
  "dark": {
    "textColor": Colors.white,
    "bgColor": CustomColors.cardBg,
  }
};

//final textStyleDisplay1CNAF= darkThemeCNAF.textTheme.display1.copyWith(color: fontColor);
//写法2字体正常
class CustomTextStyle {
//  static TextStyle display1(BuildContext context,[Color color]) {
//    return Theme.of(context)
//        .textTheme
//        .display1
//        .copyWith(color: color, fontSize: 14);
//  }
//
//  static TextStyle display2(BuildContext context,[Color color]) {
//    return Theme.of(context)
//        .textTheme
//        .display2
//        .copyWith(color: color, fontSize: 16);
//  }
//
//  static TextStyle display3(BuildContext context, double size, bool flag,[Color color]) {
//    return Theme.of(context).textTheme.display3.copyWith(
//        color: color,
//        fontSize: size,
//        fontWeight: flag ? FontWeight.bold : FontWeight.normal);
//  }
}

class CustomColors {
  const CustomColors();

  static const Color loginGradientStart = const Color(0xFF2C3E50);
  static const Color loginGradientEnd = const Color(0xFF000000);
  static const Color shadow = const Color(0xFFF3F3F3);

  ///迭代一
  static const Color cardBg = const Color.fromRGBO(18, 31, 51, 1);
  static const Color appBarBg = const Color.fromRGBO(0, 0, 0, 1);
  static const Color cardLightBg = const Color.fromRGBO(255, 255, 255,0.5);
  static const Color btnBg = const Color.fromRGBO(251, 140, 0, 1);
  static const Color white20 = Color.fromRGBO(255, 255, 255, 0.2);

  ///加油 落地
  static const Color addOilBg = const Color.fromRGBO(86, 120, 250, 1);

  ///抽油 起飞
  static const Color takeOffBg = const Color.fromRGBO(230, 30, 35, 1);

  ///green
  static const Color greenBg = const Color.fromRGBO(20, 230, 20, 1);

  //黑色-85
  static const Color black_85 = const Color(0x85000000);
  static const backgroundIndex5 = Color.fromRGBO(61, 63, 65, 1);
  static const backgroundIndex4 = Color.fromRGBO(40, 42, 42, 1);
  static const fontColor = Color.fromRGBO(255, 255, 255, 0.87);
  static const fontBlackColor = Color.fromRGBO(0, 0, 0, 0);
  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
//
//class CustomContainer extends Container {
//  CustomContainer({Key key, @required Widget child, double height, Color color})
//      : super(key: key, child: child, height: height, color: color);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: child,
//      margin: EdgeInsets.all(15),
//      padding: EdgeInsets.all(15),
//      decoration: new BoxDecoration(
//          shape: BoxShape.rectangle,
//          borderRadius: BorderRadius.all(Radius.circular(5)),
//          border: Border.all(color: Colors.green, width: 1),
//          color: CustomColors.black_85),
//    );
//  }
//}
