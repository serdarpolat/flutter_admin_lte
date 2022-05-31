import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color badgeColor;
  final double? height;
  final IconData? iconData;

  const Badge({
    Key? key,
    required this.title,
    required this.titleColor,
    required this.badgeColor,
    this.height,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 18,
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Center(
        child: Row(
          children: [
            if (iconData != null)
              Icon(
                iconData,
                color: titleColor,
                size: 11.25,
              ),
            if (iconData != null) SizedBox(width: 4),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 0.7.rem,
                color: titleColor,
                height: 1,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: badgeColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
