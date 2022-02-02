import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/sidebar/sidebar_header.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: Sizes.height(context),
      color: Clr.grayDark,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 57),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Ink(
                      width: double.infinity,
                      height: 57,
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          ClipOval(
                              child: Image.network(
                            "https://randomuser.me/api/portraits/men/11.jpg",
                            width: 33,
                            height: 33,
                            fit: BoxFit.cover,
                          )),
                          SizedBox(width: 16),
                          Text(
                            "Serdar POLAT",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Clr.white,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Clr.grayDark,
                        border: Border(
                          bottom: BorderSide(
                            color: Clr.borderGray,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SidebarHeader(),
        ],
      ),
    );
  }
}
