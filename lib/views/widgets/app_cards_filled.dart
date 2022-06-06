import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

import '../../core/providers/media_provider.dart';
import '../components/app_card.dart';

class AppCardsFilled extends StatelessWidget {
  const AppCardsFilled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cards Filled',
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
                  filled: true,
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
                  filled: true,
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
                  filled: true,
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
                      filled: true,
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
                      filled: true,
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
                filled: true,
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
                filled: true,
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
                filled: true,
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
                filled: true,
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
