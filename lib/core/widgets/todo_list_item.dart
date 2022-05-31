import 'package:flutter/material.dart';

import '../core.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  final TodoItemModel model;

  @override
  Widget build(BuildContext context) {
    bool overTime = model.completeTime.compareTo(DateTime.now()) <= 0;
    return ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: Container(
        height: 44,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(
                Icons.drag_indicator,
                color: Clr.black,
              ),
            ),
            Checkbox(
              value: true,
              onChanged: (state) {},
            ),
            Text(
              model.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Clr.black,
                decoration: !model.completed ? TextDecoration.lineThrough : null,
                decorationColor: Clr.grayDark,
                decorationThickness: 2,
              ),
            ),
            SizedBox(width: 0.5.rem),
            Badge(
              title: '4 hours',
              titleColor: Clr.white,
              badgeColor: overTime ? Clr.danger : Clr.blue,
              iconData: Icons.timer,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xfff8f9fa),
          border: Border(
            left: BorderSide(
              color: Color(0xffe9ecef),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
