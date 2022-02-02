import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Sizes.width(context),
        height: Sizes.height(context),
        child: Row(
          children: [
            Sidebar(),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
