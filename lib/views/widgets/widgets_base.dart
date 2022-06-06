import 'package:admin_lte/views/widgets/app_cards_filled.dart';
import 'package:admin_lte/views/widgets/info_boxes.dart';
import 'package:admin_lte/views/widgets/info_boxes_bgcolor.dart';
import 'package:admin_lte/views/widgets/small_boxes.dart';
import 'package:flutter/material.dart';

import '../components/components_files.dart';
import 'app_cards.dart';

class WidgetsBase extends StatelessWidget {
  const WidgetsBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetScrollController = ScrollController();
    return SingleChildScrollView(
      controller: widgetScrollController,
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContentHeader(),
          SizedBox(height: 16),
          InfoBoxes(),
          SizedBox(height: 16),
          InfoBoxesBgColor(),
          SizedBox(height: 16),
          SmallBoxes(),
          SizedBox(height: 16),
          AppCards(),
          SizedBox(height: 16),
          AppCardsFilled(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
