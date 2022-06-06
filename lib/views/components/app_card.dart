import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

enum CardType { info, success, danger, warning, blue, white }

class AppCard extends StatefulWidget {
  final bool expandable;
  final bool closable;
  final bool? filled;
  final bool? expanded;
  final CardType cardtype;
  final Widget title;
  final Widget content;
  final Function()? maxMin;

  const AppCard({
    Key? key,
    required this.expandable,
    required this.closable,
    required this.cardtype,
    required this.title,
    required this.content,
    this.filled,
    this.expanded,
    this.maxMin,
  }) : super(key: key);

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  late bool isExpand;
  bool isDisplay = true;
  late Color headerColor;
  late Color bodyColor;

  @override
  void initState() {
    headerColor = setColor(widget.cardtype);
    bodyColor = widget.filled != null && widget.filled! ? headerColor : Clr.white;
    isExpand = widget.expanded == null ? true : widget.expanded!;
    super.initState();
  }

  setColor(CardType type) {
    switch (type) {
      case CardType.blue:
        return Clr.blue;
      case CardType.info:
        return Clr.info;
      case CardType.success:
        return Clr.success;
      case CardType.danger:
        return Clr.danger;
      case CardType.warning:
        return Clr.warning;
      case CardType.white:
        return Clr.white;
      default:
        return Clr.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return isDisplay
        ? Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.25.rem),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.13),
                  offset: Offset(0, 0),
                  blurRadius: 1,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.20),
                  offset: Offset(0, 1),
                  blurRadius: 3,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.25.rem),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 0.75.rem, horizontal: 1.25.rem),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widget.title,
                        Row(
                          children: [
                            if (widget.expandable)
                              Material(
                                borderRadius: BorderRadius.circular(0.25.rem),
                                color: Clr.white.withOpacity(0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isExpand = !isExpand;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(0.25.rem),
                                  child: SizedBox(
                                    width: 31,
                                    height: 31,
                                    child: Icon(
                                      isExpand ? Icons.remove : Icons.add,
                                      color: Clr.white,
                                    ),
                                  ),
                                ),
                              ),
                            if (widget.closable)
                              Material(
                                borderRadius: BorderRadius.circular(0.25.rem),
                                color: Clr.white.withOpacity(0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isDisplay = !isDisplay;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(0.25.rem),
                                  child: SizedBox(
                                    width: 31,
                                    height: 31,
                                    child: Icon(
                                      Icons.close,
                                      color: Clr.white,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: headerColor,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black.withOpacity(0.125),
                        ),
                      ),
                    ),
                  ),
                  if (isExpand)
                    Container(
                      padding: EdgeInsets.all(1.25.rem),
                      color: bodyColor,
                      child: widget.content,
                    ),
                ],
              ),
            ),
          )
        : SizedBox();
  }
}
