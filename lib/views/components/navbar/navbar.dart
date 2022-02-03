import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 57,
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Clr.dark,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Clr.gray,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      color: Clr.gray,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Ionicons.search),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Ionicons.chatbubbles_outline),
                    ),
                    Positioned(
                      top: 4,
                      right: 4,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            "3",
                            style: TextStyle(
                              color: Clr.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Clr.red,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Ionicons.notifications_outline),
                    ),
                    Positioned(
                      top: 4,
                      right: 4,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            "3",
                            style: TextStyle(
                              color: Clr.gray,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Clr.yellow,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Ionicons.expand_outline), // else: shrink
                ),
              ),
              Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Ionicons.settings_outline),
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Clr.white,
        border: Border(
          bottom: BorderSide(
            color: Clr.gray.withOpacity(0.25),
            width: 1,
          ),
        ),
      ),
    );
  }
}
