import 'package:admin_lte/views/components/components_files.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class SalesGraph extends StatefulWidget {
  const SalesGraph({Key? key}) : super(key: key);

  @override
  State<SalesGraph> createState() => _SalesGraphState();
}

class _SalesGraphState extends State<SalesGraph> {
  bool closed = false;
  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.h(8)),
      child: LteCard(
        bgColor: Clr.info,
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.insights,
                  color: Clr.white,
                ),
                SizedBox(width: 6),
                Text(
                  "Sales Graph",
                  style: TextStyle(
                    color: Clr.white,
                    fontSize: Sizes.h(1.1.rem),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Material(
                  elevation: 0,
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => setState(() => closed = !closed),
                    child: SizedBox(
                      width: 32,
                      height: 32,
                      child: Center(
                        child: Icon(
                          closed ? Icons.add : Icons.remove,
                          color: Clr.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: AnimatedContainer(
          duration: Duration(milliseconds: 240),
          height: closed ? 0 : 290 + 114,
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 290,
                  child: Padding(
                    padding: EdgeInsets.all(1.25.rem),
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(
                          show: false,
                          drawHorizontalLine: false,
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 30,
                              getTitlesWidget: bottomTitleWidgets,
                              interval: 1,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: leftTitleWidgets,
                              reservedSize: 42,
                              interval: 1,
                            ),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: false,
                          border: Border.all(color: const Color(0xff37434d), width: 1),
                        ),
                        minX: 0,
                        maxX: 10,
                        minY: 10,
                        maxY: 20000,
                        lineBarsData: [
                          LineChartBarData(
                            spots: const [
                              FlSpot(0, 2666),
                              FlSpot(1, 2778),
                              FlSpot(2, 4912),
                              FlSpot(3, 3767),
                              FlSpot(4, 6810),
                              FlSpot(5, 5670),
                              FlSpot(6, 4820),
                              FlSpot(7, 15073),
                              FlSpot(8, 10687),
                              FlSpot(9, 8432),
                            ],
                            isCurved: true,
                            color: const Color(0xff23b6e6),
                            barWidth: 3,
                            isStrokeCapRound: true,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(
                              show: true,
                              color: Color(0xff23b6e6).withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 114,
                  child: Padding(
                    padding: EdgeInsets.all(1.25.rem),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 5000:
        text = '5000';
        break;
      case 10000:
        text = '10000';
        break;
      case 15000:
        text = '15000';
        break;
      case 20000:
        text = '20000';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('11-Q1', style: style);
        break;
      case 1:
        text = const Text('11-Q2', style: style);
        break;
      case 2:
        text = const Text('11-Q3', style: style);
        break;
      case 3:
        text = const Text('11-Q4', style: style);
        break;
      case 4:
        text = const Text('12-Q1', style: style);
        break;
      case 5:
        text = const Text('12-Q2', style: style);
        break;
      case 6:
        text = const Text('12-Q3', style: style);
        break;
      case 7:
        text = const Text('12-Q4', style: style);
        break;
      case 8:
        text = const Text('13-Q1', style: style);
        break;
      case 9:
        text = const Text('13-Q2', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }
}
