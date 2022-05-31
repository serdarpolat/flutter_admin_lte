import 'package:admin_lte/core/theme/clr.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class InfoCardModel {
  final int id;
  final String title;
  final String subtitle;
  final IconData iconData;
  final Color bgColor;
  final Color textColor;

  InfoCardModel(this.id, this.title, this.subtitle, this.iconData, this.bgColor, this.textColor);
}

List<InfoCardModel> infoCards = [
  InfoCardModel(0, '150', 'New Orders', Ionicons.bag, Clr.cyan, Clr.white),
  InfoCardModel(1, '53', 'Bounce Rate', Ionicons.stats_chart, Clr.green, Clr.white),
  InfoCardModel(2, '44', 'User Registrations', Ionicons.person_add, Clr.yellow, Clr.dark),
  InfoCardModel(3, '65', 'Unique Visitors', Ionicons.pie_chart, Clr.red, Clr.white),
];
