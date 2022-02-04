import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

class LteCard extends StatelessWidget {
  const LteCard({
    Key? key,
    required this.body,
    this.header,
    this.bgColor,
  }) : super(key: key);
  final Widget? header;
  final Widget body;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //! Card header
          if (header != null)
            LteCardHeader(
              child: header,
            ),
          //! Card body
          LteCardBody(
            child: body,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: bgColor ?? Clr.white,
        borderRadius: BorderRadius.circular(Sizes.h(8)),
        boxShadow: [
          BoxShadow(
            color: Clr.black.withOpacity(0.05),
            offset: Offset(0, 0),
            blurRadius: Sizes.h(0.5),
          ),
          BoxShadow(
            color: Clr.black.withOpacity(0.1),
            offset: Offset(0, 1),
            blurRadius: Sizes.h(1.5),
          ),
        ],
      ),
    );
  }
}

class LteCardBody extends StatelessWidget {
  const LteCardBody({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.h(Sizes.remToPx(1.25)),
        vertical: Sizes.h(
          Sizes.remToPx(0.75),
        ),
      ),
      child: child,
    );
  }
}

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
        horizontal: Sizes.h(Sizes.remToPx(1.25)),
        vertical: Sizes.h(
          Sizes.remToPx(0.25),
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
