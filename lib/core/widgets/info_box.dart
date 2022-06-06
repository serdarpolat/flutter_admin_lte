import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final Color? bgColor;
  final Color iconBgColor;
  final IconData icon;
  final String title;
  final String subtitle;

  const InfoBox({Key? key, this.bgColor, required this.iconBgColor, required this.icon, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bg = bgColor ?? Clr.white;
    final iconBg = bgColor ?? iconBgColor;
    return Container(
      padding: EdgeInsets.all(0.5.rem),
      width: double.infinity,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(0.25.rem),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.13),
            offset: Offset(0, 0),
            blurRadius: 1,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.20),
            offset: Offset(0, 1),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80 - 1.rem,
            height: 80 - 1.rem,
            child: Center(
              child: Icon(
                icon,
                color: Clr.white,
                size: 30,
              ),
            ),
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(0.15.rem),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Clr.black,
                  fontSize: 1.rem,
                  height: 1.8,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Clr.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 1.rem,
                  height: 1.8,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
