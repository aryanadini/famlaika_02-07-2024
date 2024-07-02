import 'package:famlaika1/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration get fillGray =>
      BoxDecoration(
        color: appTheme.gray90001
      );

  static BoxDecoration get outlineYellow =>
      BoxDecoration(
          border: Border.all(
              color: Color(0xFFffa700),
              width: 1
          )

      );
  static BoxDecoration get outlineGray =>
      BoxDecoration(color: theme.colorScheme.onPrimary,
          border: Border.all(
              color: appTheme.gray80001,
              width: 1
          )

      );

}
class BorderRadiusStyle{
  static BorderRadius get customBorderTL34=>BorderRadius.only(
    topLeft: Radius.circular(34),
    bottomLeft: Radius.circular(34),
    bottomRight: Radius.circular(34)
  );
  static BorderRadius get roundedBorder5=>BorderRadius.circular(5);
  static BorderRadius get roundedBorder60=>BorderRadius.circular(60);
}

