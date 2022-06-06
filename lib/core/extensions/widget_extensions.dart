import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Padding get padding8 => Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.h(8)),
        child: this,
      );
}
