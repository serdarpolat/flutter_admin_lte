import 'package:admin_lte/core/models/info_card_model.dart';
import 'package:admin_lte/core/providers/media_provider.dart';
import 'package:admin_lte/views/components/components_files.dart';
import 'package:flutter/material.dart';

class InfoCards extends StatelessWidget {
  const InfoCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int crosAxisCount = MediaProvider.screen(context) == BPoints.xlarge
        ? 4
        : MediaProvider.screen(context) == BPoints.large
            ? 3
            : 2;

    double childAspectRatio = MediaQuery.of(context).size.width >= 1335
        ? 2.5
        : MediaQuery.of(context).size.width >= 1064
            ? 1.8
            : MediaProvider.screen(context) == BPoints.large
                ? 2
                : MediaProvider.screen(context) == BPoints.medium
                    ? 2.14
                    : 1.75;
    return (MediaProvider.screen(context) == BPoints.xlarge || MediaProvider.screen(context) == BPoints.large)
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
          );
  }
}
