import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/components/components_files.dart';
import 'package:admin_lte/views/dashboard/widgets/info_cards.dart';
import 'package:flutter/material.dart';

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
                  children: [],
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
