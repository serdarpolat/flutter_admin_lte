import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/core/models/info_card_model.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.infoCard,
  }) : super(key: key);

  final InfoCardModel infoCard;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        infoCard.title,
                        style: TextStyle(
                          fontSize: 2.2.rem,
                          color: infoCard.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        infoCard.subtitle,
                        style: TextStyle(
                          fontSize: 0.8.rem,
                          color: infoCard.textColor,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    infoCard.iconData,
                    color: Clr.black.withOpacity(0.15),
                    size: 60,
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
              height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "More Info",
                    style: TextStyle(
                      color: infoCard.textColor,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Ionicons.arrow_forward_circle,
                    color: infoCard.textColor,
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
        color: infoCard.bgColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
