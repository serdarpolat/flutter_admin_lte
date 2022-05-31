import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../components/components_files.dart';
import '../chat_message_item.dart';

class DirectChat extends StatefulWidget {
  const DirectChat({
    Key? key,
  }) : super(key: key);

  @override
  State<DirectChat> createState() => _DirectChatState();
}

class _DirectChatState extends State<DirectChat> {
  bool closed = false;
  final scrollController = ScrollController();
  final bodyScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.h(8)),
      child: LteCard(
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Direct Chat",
              style: TextStyle(
                color: Clr.dark,
                fontSize: Sizes.h(1.1.rem),
              ),
            ),
            Row(
              children: [
                Badge(
                  title: '3',
                  titleColor: Clr.white,
                  badgeColor: Clr.blue,
                ),
                Material(
                  elevation: 0,
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => setState(() => closed = !closed),
                    child: SizedBox(
                      width: 32,
                      height: 32,
                      child: Center(
                        child: Icon(closed ? Icons.add : Icons.remove),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: AnimatedContainer(
          duration: Duration(milliseconds: 240),
          height: closed ? 0 : 280 + 62,
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Container(
                  height: 280,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SingleChildScrollView(
                    controller: bodyScrollController,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        ...List.generate(10, (index) {
                          return index % 2 == 0 ? ChatMessageItemLeft() : ChatMessageItemRight();
                        }),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 62,
                  padding: EdgeInsets.symmetric(horizontal: 1.25.rem, vertical: 0.75.rem),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffced4da),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.25.rem),
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Type message...',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              color: Clr.blue,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 0.75.rem,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Send',
                                      style: TextStyle(
                                        color: Clr.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Clr.white,
                          borderRadius: BorderRadius.circular(0.25.rem),
                        ),
                      ),
                    ),
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
      ),
    );
  }
}
