import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle title18(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.titleLarge?.color,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'TenorSans',
      letterSpacing: 4.0,
    );
  }

  static TextStyle subTitle16(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.titleMedium?.color,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'TenorSans',
      letterSpacing: 2.0,
    );
  }

  static TextStyle subTitle14(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.titleSmall?.color,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'TenorSans',
      letterSpacing: 2.0,
    );
  }

  static TextStyle bodyLarge(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'TenorSans',
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyMedium?.color,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'TenorSans',
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodySmall?.color,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'TenorSans',
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // better for mobile and no context;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // var width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 450;
  } else {
    return width / 800;
  }
}
