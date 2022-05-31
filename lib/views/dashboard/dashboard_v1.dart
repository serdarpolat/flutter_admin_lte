import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/components/components_files.dart';
import 'package:admin_lte/views/dashboard/widgets/info_cards.dart';
import 'package:admin_lte/views/dashboard/widgets/sales_graph/sales_graph.dart';
import 'package:flutter/material.dart';

import 'widgets/city_map/city_map.dart';
import 'widgets/direct_chat/direct_chat.dart';
import 'widgets/sales_chart/sales_chart.dart';
import 'widgets/todo_list/todo_list.dart';

class DashboardV1 extends StatelessWidget {
  const DashboardV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardScrollController = ScrollController();
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      controller: dashboardScrollController,
      child: Column(
        children: [
          ContentHeader(),
          InfoCards(),
          SizedBox(height: Sizes.h(16)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SalesChart(),
                    SizedBox(height: 16),
                    DirectChat(),
                    SizedBox(height: 16),
                    TodoList(),
                  ],
                ),
                flex: 7,
              ),
              Expanded(
                child: Column(
                  children: [
                    CityMap(),
                    SizedBox(height: 16),
                    SalesGraph(),
                  ],
                ),
                flex: 5,
              ),
            ],
          ),
          SizedBox(height: Sizes.h(16)),
        ],
      ),
    );
  }
}
