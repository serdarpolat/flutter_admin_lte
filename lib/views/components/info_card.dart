import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.iconData,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData iconData;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.h(4)),
        child: Container(
          height: Sizes.h(112),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: Sizes.remToPx(2.2),
                              color: textColor,
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          ),
                          Text(
                            subtitle,
                            style: TextStyle(
                              fontSize: Sizes.remToPx(0.8),
                              color: textColor,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        iconData,
                        color: Clr.black.withOpacity(0.15),
                        size: 70,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "More Info",
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Ionicons.arrow_forward_circle,
                        color: textColor,
                        size: 20,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Clr.black.withOpacity(0.1),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(4),
                    ),
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
