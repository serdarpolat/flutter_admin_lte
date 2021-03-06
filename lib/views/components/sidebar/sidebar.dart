import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/components/sidebar/sidebar_widgets/sidebar_layouts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key, required this.scaffoldKey}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final sidebarScrollController = ScrollController();
    return Consumer2(
      builder: (context, SidebarProvider sidebarProvider, PageProvider pageProvider, Widget? child) {
        return Container(
          width: 250,
          height: Sizes.height(context),
          color: Clr.grayDark,
          child: Stack(
            children: [
              SingleChildScrollView(
                controller: sidebarScrollController,
                child: Column(
                  children: [
                    SizedBox(height: 57),
                    SidebarUserLink(),
                    SizedBox(height: 10),
                    SearchForm(),
                    ...List.generate(sidebarButtons.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: SidebarButton(
                          item: sidebarButtons[index],
                          isActive: index == sidebarProvider.id,
                          expanded: sidebarButtons[index].subButtons != null && sidebarButtons[index].id == sidebarProvider.expandId,
                          onTap: () {
                            if (sidebarButtons[index].subButtons != null) {
                              sidebarProvider.setExpandId(sidebarButtons[index].id);
                            } else {
                              pageProvider.newPage(sidebarButtons[index].id);
                              pageProvider.newSubPage(0);
                              sidebarProvider.setExpandId(-1);
                              sidebarProvider.setId(sidebarButtons[index].id);
                            }
                          },
                        ),
                      );
                    }),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 8),
                    SidebarLinkToGithub(),
                    SizedBox(height: 12),
                  ],
                ),
              ),
              SidebarHeader(),
            ],
          ),
        );
      },
    );
  }
}
