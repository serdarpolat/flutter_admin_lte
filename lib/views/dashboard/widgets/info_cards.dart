import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/components/components_files.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class InfoCards extends StatelessWidget {
  const InfoCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.h(4)),
      child: Row(
        children: [
          InfoCard(
            title: "150",
            subtitle: "New Orders",
            iconData: Ionicons.bag,
            bgColor: Clr.cyan,
            textColor: Clr.white,
          ),
          InfoCard(
            title: "53",
            subtitle: "Bounce Rate",
            iconData: Ionicons.stats_chart,
            bgColor: Clr.green,
            textColor: Clr.white,
          ),
          InfoCard(
            title: "44",
            subtitle: "User Registrations",
            iconData: Ionicons.person_add,
            bgColor: Clr.yellow,
            textColor: Clr.dark,
          ),
          InfoCard(
            title: "65",
            subtitle: "Unique Visitors",
            iconData: Ionicons.pie_chart,
            bgColor: Clr.red,
            textColor: Clr.white,
          ),
        ],
      ),
    );
  }
}
