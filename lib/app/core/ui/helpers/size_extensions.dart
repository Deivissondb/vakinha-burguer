import 'package:flutter/cupertino.dart';

extension SizeExtensions on BuildContext {
  double get screenwidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double percentWidth(double percent) => screenwidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}
