import 'package:flutter/material.dart';

import '../core.dart';

class PaginationButtons extends StatefulWidget {
  const PaginationButtons({Key? key, required this.count, required this.tapIndex}) : super(key: key);
  final int count;
  final Function(int) tapIndex;

  @override
  State<PaginationButtons> createState() => _PaginationButtonsState();
}

class _PaginationButtonsState extends State<PaginationButtons> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32,
          child: Row(
            children: [
              Material(
                color: Clr.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(0.25.rem),
                ),
                child: InkWell(
                  onTap: currentIndex != 0 ? () => setState(() => currentIndex--) : null,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 0.25.rem,
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: Clr.blue,
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 1,
                        color: Clr.border,
                      ),
                    ],
                  ),
                ),
              ),
              ...List.generate(widget.count, (index) {
                bool active = currentIndex == index;
                return Material(
                  color: active ? Clr.border.withOpacity(0.25) : Clr.white,
                  child: InkWell(
                    onTap: active
                        ? null
                        : () {
                            setState(() => currentIndex = index);
                            widget.tapIndex(currentIndex);
                          },
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.75.rem,
                          ),
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                              color: Clr.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          height: 38,
                          width: 1,
                          color: Clr.border,
                        ),
                      ],
                    ),
                  ),
                );
              }),
              Material(
                color: Clr.white,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(0.25.rem),
                ),
                child: InkWell(
                  onTap: currentIndex < (widget.count - 1) ? () => setState(() => currentIndex++) : null,
                  child: Row(
                    children: [
                      Container(
                        height: 32,
                        padding: EdgeInsets.symmetric(
                          horizontal: 0.25.rem,
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Clr.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.25.rem),
            border: Border.all(
              color: Clr.border,
            ),
          ),
        ),
      ],
    );
  }
}
