import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.h(8), vertical: Sizes.h(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            pageNames[pageProvider.page][pageProvider.subPage],
            style: TextStyle(
              color: Clr.dark,
              fontSize: Sizes.remToPx(1.8),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  pageProvider.newPage(pageProvider.page);
                  pageProvider.newSubPage(pageProvider.subPage);
                },
                child: Container(
                  color: Clr.bg,
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Clr.blue,
                      fontSize: Sizes.remToPx(1),
                      height: 1.8,
                    ),
                  ),
                ),
              ),
              Text(
                "  /  ",
                style: TextStyle(
                  color: Clr.gray,
                  fontSize: Sizes.remToPx(1),
                  height: 1.8,
                ),
              ),
              Text(
                pageNames[pageProvider.page][pageProvider.subPage],
                style: TextStyle(
                  color: Clr.gray,
                  fontSize: Sizes.remToPx(1),
                  height: 1.8,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
