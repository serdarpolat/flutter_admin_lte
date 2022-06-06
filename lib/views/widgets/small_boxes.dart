import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/core/models/info_card_model.dart';
import 'package:admin_lte/core/providers/media_provider.dart';
import 'package:flutter/material.dart';

import '../components/info_card.dart';

class SmallBoxes extends StatelessWidget {
  const SmallBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Small Boxes',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 1.25.rem,
          ),
        ).padding8,
        SizedBox(height: 10),
        (MediaProvider.screen(context) == BPoints.xlarge || MediaProvider.screen(context) == BPoints.large)
            ? Row(
                children: List.generate(
                  infoCards.length,
                  (index) {
                    final InfoCardModel card = infoCards[index];
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: InfoCard(infoCard: card),
                      ),
                    );
                  },
                ),
              )
            : Column(
                children: [
                  Row(
                    children: List.generate(
                      2,
                      (index) {
                        final InfoCardModel card = infoCards[index];
                        return Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: InfoCard(infoCard: card),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: List.generate(
                      2,
                      (index) {
                        final InfoCardModel card = infoCards[index + 2];
                        return Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: InfoCard(infoCard: card),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
