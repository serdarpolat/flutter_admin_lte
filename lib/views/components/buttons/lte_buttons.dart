import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

class ButtonNormal extends StatelessWidget {
  const ButtonNormal({
    Key? key,
    required this.child,
    this.bgColor,
    this.borderColor,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final Color? bgColor;
  final Color? borderColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Clr.light,
      borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.25))),
      child: InkWell(
        borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.25))),
        onTap: onTap,
        child: Container(
          height: 38,
          child: child,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.25))),
            border: Border.all(
              color: borderColor ?? Color(0xffdddddd),
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonLG extends StatelessWidget {
  const ButtonLG({
    Key? key,
    required this.child,
    this.bgColor,
    this.borderColor,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final Color? bgColor;
  final Color? borderColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Clr.light,
      borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.3))),
      child: InkWell(
        borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.3))),
        onTap: onTap,
        child: Container(
          height: 48,
          child: child,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.3))),
            border: Border.all(
              color: borderColor ?? Color(0xffdddddd),
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonSM extends StatelessWidget {
  const ButtonSM({
    Key? key,
    required this.child,
    this.bgColor,
    this.borderColor,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final Color? bgColor;
  final Color? borderColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Clr.light,
      borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.2))),
      child: InkWell(
        borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.2))),
        onTap: onTap,
        child: Container(
          height: 31,
          child: child,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.2))),
            border: Border.all(
              color: borderColor ?? Color(0xffdddddd),
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonXS extends StatelessWidget {
  const ButtonXS({
    Key? key,
    required this.child,
    this.bgColor,
    this.borderColor,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final Color? bgColor;
  final Color? borderColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Clr.light,
      borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.15))),
      child: InkWell(
        borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.15))),
        onTap: onTap,
        child: Container(
          height: 24,
          child: child,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.h(Sizes.remToPx(0.15))),
            border: Border.all(
              color: borderColor ?? Color(0xffdddddd),
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonFlat extends StatelessWidget {
  const ButtonFlat({
    Key? key,
    required this.child,
    this.bgColor,
    this.borderColor,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final Color? bgColor;
  final Color? borderColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Clr.light,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 24,
          child: child,
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor ?? Color(0xffdddddd),
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
