import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SidebarButton extends StatelessWidget {
  const SidebarButton({
    Key? key,
    required this.item,
    required this.isActive,
    required this.expanded,
    this.onTap,
  }) : super(key: key);
  final SidebarButtonModel item;
  final bool isActive;
  final bool expanded;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    SidebarProvider sidebarProvider = Provider.of<SidebarProvider>(context, listen: false);
    PageProvider pageProvider = Provider.of<PageProvider>(context, listen: false);
    bool isSubbuton = item.icon == Icons.panorama_fish_eye;
    Color bgColor = isSubbuton
        ? (isActive ? Clr.white.withOpacity(0.9) : Clr.dark)
        : (isActive
            ? Clr.blue
            : expanded
                ? Clr.gray.withOpacity(0.25)
                : Clr.dark);
    Color textColor = isSubbuton ? (isActive ? Clr.dark : Clr.white) : Clr.white;
    return AnimatedContainer(
      duration: Duration(milliseconds: 240),
      height: item.subButtons == null
          ? 38
          : expanded
              ? (item.subButtons!.length * 42 + 38)
              : 38,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 38,
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  borderRadius: BorderRadius.circular(4.25),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      children: [
                        Icon(
                          item.icon,
                          color: textColor,
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            item.title,
                            style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        if (item.msg != null)
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: SizedBox(
                              height: 18,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                child: Center(
                                  child: Text(
                                    item.msg!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Clr.white,
                                      height: 1,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Clr.red,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                          ),
                        if (item.badge != null)
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    item.badge!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Clr.white,
                                      height: 1,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Clr.cyan,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                          ),
                        if (item.subButtons != null)
                          AnimatedRotation(
                            duration: Duration(milliseconds: 240),
                            turns: expanded ? 0 : 0.25,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: textColor,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            if (item.subButtons != null && expanded)
              Column(
                children: List.generate(item.subButtons!.length, (index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 4.0, left: 8),
                    child: SidebarButton(
                      item: item.subButtons![index],
                      isActive: item.id == sidebarProvider.id && item.subButtons![index].id == sidebarProvider.subId,
                      expanded: false,
                      onTap: () {
                        pageProvider.newPage(item.id);
                        pageProvider.newSubPage(item.subButtons![index].id);
                        sidebarProvider.setSubId(item.subButtons![index].id);
                        sidebarProvider.setId(item.id);
                      },
                    ),
                  );
                }),
              ),
          ],
        ),
      ),
    );
  }
}
