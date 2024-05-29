import 'package:flutter/material.dart';
import 'package:my_protfolio/core/utils/size_config.dart';

abstract class AppFont {
  static TextStyle styleRegular18(context) {
    return TextStyle(
      // color: const Color(0xff064060),
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      // fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleRegular15(context) {
    return TextStyle(
      // color: const Color(0xff064060),
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      // fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium12(context) {
    return TextStyle(
      // color: const Color(0xff064060),
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      // fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular25(context) {
    return TextStyle(
      // color: const Color(0xff064060),
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      // fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold21(context) {
    return TextStyle(
      // color: const Color(0xff064060),
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 21),
      // fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold20(context) {
    return TextStyle(
      // color: const Color(0xff064060),
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      // fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium10(context) {
    return TextStyle(
      // color: const Color(0xff064060),
      color: const Color(0xff56B8FF),
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      // fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
