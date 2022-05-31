import 'package:flutter/material.dart';

import '../../../core/core.dart';

class LteCardHeader extends StatelessWidget {
  const LteCardHeader({
    Key? key,
    this.child,
  }) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Sizes.h(50),
      child: child,
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.h(1.25.rem),
        vertical: Sizes.h(
          0.25.rem,
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Clr.black.withOpacity(0.25),
            width: 0.5,
          ),
        ),
      ),
    );
  }
}
