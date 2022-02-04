import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/components/components_files.dart';
import 'package:admin_lte/views/dashboard/widgets/info_cards.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DashboardV1 extends StatelessWidget {
  const DashboardV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContentHeader(),
        InfoCards(),
        SizedBox(height: Sizes.h(16)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.h(8)),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    LteCard(
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
                                  fontSize: Sizes.h(Sizes.remToPx(1.1)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ButtonNormal(
                                bgColor: Clr.blue,
                                borderColor: Colors.transparent,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: Sizes.h(Sizes.remToPx(1))),
                                  child: Center(
                                    child: Text(
                                      "Area",
                                      style: TextStyle(
                                        color: Clr.white,
                                        fontSize: Sizes.h(14),
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ButtonNormal(
                                bgColor: Colors.white,
                                borderColor: Colors.transparent,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: Sizes.h(Sizes.remToPx(1))),
                                  child: Center(
                                    child: Text(
                                      "Donut",
                                      style: TextStyle(
                                        color: Clr.dark,
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
                      body: SizedBox(),
                    ),
                  ],
                ),
                flex: 7,
              ),
              SizedBox(width: Sizes.h(16)),
              Expanded(
                child: Column(
                  children: [],
                ),
                flex: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
