import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/core/providers/media_provider.dart';
import 'package:admin_lte/views/components/components_files.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    return Scaffold(
      backgroundColor: Clr.bg,
      key: _scaffoldKey,
      body: SizedBox(
        width: Sizes.width(context),
        height: Sizes.height(context),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (MediaProvider.screen(context) == BPoints.xlarge) Sidebar(scaffoldKey: _scaffoldKey),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 57),
                    child: pages[pageProvider.page][pageProvider.subPage],
                  ),
                  Navbar(scaffoldKey: _scaffoldKey),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: MediaProvider.screen(context) != BPoints.xlarge ? Sidebar(scaffoldKey: _scaffoldKey) : null,
    );
  }
}
