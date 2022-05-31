import 'package:flutter/material.dart';

class LteCardBody extends StatelessWidget {
  const LteCardBody({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: child,
    );
  }
}
