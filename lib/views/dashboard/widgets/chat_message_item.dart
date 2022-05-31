import 'dart:math';

import 'package:flutter/material.dart';

import '../../../core/core.dart';

class ChatMessageItemLeft extends StatelessWidget {
  const ChatMessageItemLeft({
    Key? key,
    this.message,
  }) : super(key: key);
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Alexander Pierce',
                style: TextStyle(
                  color: Clr.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 0.875.rem,
                ),
              ),
              Text(
                '23 Jan 2:00 pm',
                style: TextStyle(
                  color: Clr.gray,
                  fontSize: 0.875.rem,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                foregroundImage: NetworkImage('https://randomuser.me/api/portraits/men/41.jpg'),
              ),
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: sqrt(2 * (pow(12, 2))) / 2),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Transform.rotate(
                            angle: pi / 4,
                            child: Container(
                              width: 12,
                              height: 12,
                              color: Color(0xffd2d6de),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Is this template really for free? That\'s unbelievable!',
                          style: TextStyle(
                            color: Clr.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffd2d6de),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatMessageItemRight extends StatelessWidget {
  const ChatMessageItemRight({
    Key? key,
    this.message,
  }) : super(key: key);
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '23 Jan 2:00 pm',
                style: TextStyle(
                  color: Clr.gray,
                  fontSize: 0.875.rem,
                ),
              ),
              Text(
                'Sarah Bullock',
                style: TextStyle(
                  color: Clr.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 0.875.rem,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: sqrt(2 * (pow(12, 2))) / 2),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Transform.rotate(
                            angle: pi / 4,
                            child: Container(
                              width: 12,
                              height: 12,
                              color: Clr.blue,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Is this template really for free? That\'s unbelievable!',
                          style: TextStyle(
                            color: Clr.white,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Clr.blue,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 20,
                foregroundImage: NetworkImage('https://randomuser.me/api/portraits/women/41.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
