import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/components/sidebar/sidebar_widgets/sidebar_layouts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, SidebarProvider sidebarProvider, Widget? child) {
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
