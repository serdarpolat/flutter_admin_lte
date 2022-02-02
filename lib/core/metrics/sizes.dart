import 'package:flutter/cupertino.dart';

class Sizes {
  Sizes._();

  static double xs = 0;
  static double sm = 576;
  static double md = 768;
  static double lg = 992;
  static double xl = 1200;

  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
