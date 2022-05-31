import 'package:admin_lte/views/dashboard/widgets/sales_chart/sales_line_chart.dart';
import 'package:admin_lte/views/dashboard/widgets/sales_chart/sales_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../core/core.dart';
import '../../../components/components_files.dart';

class SalesChart extends StatefulWidget {
  const SalesChart({Key? key}) : super(key: key);

  @override
  State<SalesChart> createState() => _SalesChartState();
}

class _SalesChartState extends State<SalesChart> {
  bool isLine = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.h(8)),
      child: LteCard(
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Ionicons.pie_chart,
                  color: Clr.dark,
                ),
                SizedBox(width: 6),
                Text(
                  "Sales",
                  style: TextStyle(
                    color: Clr.dark,
                    fontSize: Sizes.h(1.1.rem),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ButtonNormal(
                  bgColor: isLine ? Clr.blue : Colors.white,
                  onTap: () => setState(() => isLine = true),
                  borderColor: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                    child: Center(
                      child: Text(
                        "Area",
                        style: TextStyle(
                          color: isLine ? Clr.white : Clr.dark,
                          fontSize: Sizes.h(14),
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                ButtonNormal(
                  bgColor: !isLine ? Clr.blue : Colors.white,
                  onTap: () => setState(() => isLine = false),
                  borderColor: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                    child: Center(
                      child: Text(
                        "Donut",
                        style: TextStyle(
                          color: !isLine ? Clr.white : Clr.dark,
                          fontSize: Sizes.h(14),
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(1.25.rem),
          child: AspectRatio(
            aspectRatio: 580.83 / 300,
            child: isLine ? SalesLineChart() : SalesPieChart(),
          ),
        ),
      ),
    );
  }
}
