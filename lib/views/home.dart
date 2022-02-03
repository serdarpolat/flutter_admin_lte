import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/components/components_files.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    return Scaffold(
      backgroundColor: Clr.bg,
      body: SizedBox(
        width: Sizes.width(context),
        height: Sizes.height(context),
        child: Row(
          children: [
            Sidebar(),
            Expanded(
              child: Column(
                children: [
                  Navbar(),
                  pages[pageProvider.page][pageProvider.subPage],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
