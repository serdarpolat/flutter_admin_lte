import 'package:admin_lte/core/widgets/pagination_buttons.dart';
import 'package:admin_lte/views/components/components_files.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../core/core.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.h(8)),
      child: LteCard(
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Ionicons.document_text_outline,
                  color: Clr.dark,
                ),
                SizedBox(width: 6),
                Text(
                  "To Do List",
                  style: TextStyle(
                    color: Clr.dark,
                    fontSize: Sizes.h(1.1.rem),
                  ),
                ),
              ],
            ),
            PaginationButtons(count: 4, tapIndex: (i) {}),
          ],
        ),
        body: SizedBox(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(1.25.rem),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: double.infinity,
                    minWidth: double.infinity,
                    maxHeight: 6 * 44,
                    minHeight: 6 * 44,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(todos.length, (index) {
                        final model = todos[index];

                        return TodoListItem(model: model);
                      }),
                    ],
                  ),
                ),
              ),
              Container(
                height: 62,
                padding: EdgeInsets.symmetric(horizontal: 1.25.rem, vertical: 0.75.rem),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Material(
                      color: Clr.blue,
                      borderRadius: BorderRadius.circular(0.25.rem),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(0.25.rem),
                        child: SizedBox(
                          height: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.75.rem),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Clr.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Add Item',
                                  style: TextStyle(
                                    color: Clr.white,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 243, 243),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(Sizes.h(8)),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.125),
                      offset: Offset(0, -1),
                      blurRadius: 0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<TodoItemModel> todos = [
  TodoItemModel(false, 'Make the theme responsive', DateTime.now()),
  TodoItemModel(false, 'Design a nice theme', DateTime.now()),
  TodoItemModel(false, 'Let theme shine like a star', DateTime.now()),
  TodoItemModel(false, 'Check your messages and notifications', DateTime.now()),
  TodoItemModel(false, 'Check your messages and notifications', DateTime.now()),
  TodoItemModel(false, 'Make the theme responsive', DateTime.now()),
];
