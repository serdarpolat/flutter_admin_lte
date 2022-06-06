import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

import '../../core/providers/media_provider.dart';
import '../components/app_card.dart';

class AppCards extends StatelessWidget {
  const AppCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cards',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 1.25.rem,
          ),
        ).padding8,
        SizedBox(height: 10),
        if (MediaProvider.screen(context) == BPoints.xlarge || MediaProvider.screen(context) == BPoints.large)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: AppCard(
                  cardtype: CardType.blue,
                  expanded: false,
                  title: Text(
                    'Expandable',
                    style: TextStyle(
                      fontSize: 1.1.rem,
                      color: Clr.white,
                    ),
                  ),
                  content: Text(
                    'The body of card',
                    style: TextStyle(
                      color: Clr.darker,
                      fontSize: 1.rem,
                    ),
                  ),
                  closable: false,
                  expandable: true,
                ).padding8,
              ),
              Expanded(
                child: AppCard(
                  cardtype: CardType.success,
                  title: Text(
                    'Collapsable',
                    style: TextStyle(
                      fontSize: 1.1.rem,
                      color: Clr.white,
                    ),
                  ),
                  content: Text(
                    'The body of card',
                    style: TextStyle(
                      color: Clr.darker,
                      fontSize: 1.rem,
                    ),
                  ),
                  closable: false,
                  expandable: true,
                ).padding8,
              ),
              Expanded(
                child: AppCard(
                  cardtype: CardType.warning,
                  title: Text(
                    'Removable',
                    style: TextStyle(
                      fontSize: 1.1.rem,
                      color: Clr.white,
                    ),
                  ),
                  content: Text(
                    'The body of card',
                    style: TextStyle(
                      color: Clr.darker,
                      fontSize: 1.rem,
                    ),
                  ),
                  closable: true,
                  expandable: false,
                ).padding8,
              ),
            ],
          ),
        if (MediaProvider.screen(context) == BPoints.medium)
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: AppCard(
                      cardtype: CardType.blue,
                      expanded: false,
                      title: Text(
                        'Expandable',
                        style: TextStyle(
                          fontSize: 1.1.rem,
                          color: Clr.white,
                        ),
                      ),
                      content: Text(
                        'The body of card',
                        style: TextStyle(
                          color: Clr.darker,
                          fontSize: 1.rem,
                        ),
                      ),
                      closable: false,
                      expandable: true,
                    ).padding8,
                  ),
                  Expanded(
                    child: AppCard(
                      cardtype: CardType.success,
                      title: Text(
                        'Collapsable',
                        style: TextStyle(
                          fontSize: 1.1.rem,
                          color: Clr.white,
                        ),
                      ),
                      content: Text(
                        'The body of card',
                        style: TextStyle(
                          color: Clr.darker,
                          fontSize: 1.rem,
                        ),
                      ),
                      closable: false,
                      expandable: true,
                    ).padding8,
                  ),
                ],
              ),
              SizedBox(height: 16),
              AppCard(
                cardtype: CardType.warning,
                title: Text(
                  'Removable',
                  style: TextStyle(
                    fontSize: 1.1.rem,
                    color: Clr.white,
                  ),
                ),
                content: Text(
                  'The body of card',
                  style: TextStyle(
                    color: Clr.darker,
                    fontSize: 1.rem,
                  ),
                ),
                closable: true,
                expandable: false,
              ).padding8,
            ],
          ),
        if (MediaProvider.screen(context) == BPoints.small)
          Column(
            children: [
              AppCard(
                cardtype: CardType.blue,
                expanded: false,
                title: Text(
                  'Expandable',
                  style: TextStyle(
                    fontSize: 1.1.rem,
                    color: Clr.white,
                  ),
                ),
                content: Text(
                  'The body of card',
                  style: TextStyle(
                    color: Clr.darker,
                    fontSize: 1.rem,
                  ),
                ),
                closable: false,
                expandable: true,
              ).padding8,
              SizedBox(height: 16),
              AppCard(
                cardtype: CardType.success,
                title: Text(
                  'Collapsable',
                  style: TextStyle(
                    fontSize: 1.1.rem,
                    color: Clr.white,
                  ),
                ),
                content: Text(
                  'The body of card',
                  style: TextStyle(
                    color: Clr.darker,
                    fontSize: 1.rem,
                  ),
                ),
                closable: false,
                expandable: true,
              ).padding8,
              SizedBox(height: 16),
              AppCard(
                cardtype: CardType.warning,
                title: Text(
                  'Removable',
                  style: TextStyle(
                    fontSize: 1.1.rem,
                    color: Clr.white,
                  ),
                ),
                content: Text(
                  'The body of card',
                  style: TextStyle(
                    color: Clr.darker,
                    fontSize: 1.rem,
                  ),
                ),
                closable: true,
                expandable: false,
              ).padding8,
            ],
          ),
      ],
    );
  }
}
