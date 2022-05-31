import 'package:flutter/material.dart';

class MediaProvider {
  MediaProvider._();
  static BPoints screen(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width <= 500) {
      return BPoints.small;
    }
    if (width <= 768) {
      return BPoints.medium;
    }
    if (width <= 1064) {
      return BPoints.large;
    }

    return BPoints.xlarge;
  }
}

enum BPoints { small, medium, large, xlarge }
