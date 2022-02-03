import 'package:flutter/material.dart';

class SidebarButtonModel {
  final int id;
  final IconData icon;
  final String title;
  final String? badge;
  final String? msg;
  final List<SidebarButtonModel>? subButtons;

  SidebarButtonModel({
    required this.id,
    required this.icon,
    required this.title,
    this.badge,
    this.msg,
    this.subButtons,
  });
}

List<SidebarButtonModel> sidebarButtons = [
  SidebarButtonModel(
    id: 0,
    icon: Icons.speed,
    title: "Dashboard",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "Dashboard v1"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Dashboard v2"),
      SidebarButtonModel(id: 2, icon: Icons.panorama_fish_eye, title: "Dashboard v3"),
    ],
  ),
  SidebarButtonModel(id: 1, icon: Icons.space_dashboard, title: "Widgets", msg: "New"),
  SidebarButtonModel(
    id: 2,
    icon: Icons.file_copy_rounded,
    title: "Layout Options",
    badge: "6",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "Top Navigation"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Top Navigation + Sidebar"),
      SidebarButtonModel(id: 2, icon: Icons.panorama_fish_eye, title: "Boxed"),
      SidebarButtonModel(id: 3, icon: Icons.panorama_fish_eye, title: "Fixed Sidebar"),
      SidebarButtonModel(id: 4, icon: Icons.panorama_fish_eye, title: "Fixed Sidebar + Custom"),
      SidebarButtonModel(id: 5, icon: Icons.panorama_fish_eye, title: "Fixed Navbar"),
      SidebarButtonModel(id: 6, icon: Icons.panorama_fish_eye, title: "Fixed Footer"),
      SidebarButtonModel(id: 7, icon: Icons.panorama_fish_eye, title: "Collapsed Sidebar"),
    ],
  ),
  SidebarButtonModel(
    id: 3,
    icon: Icons.donut_small,
    title: "Charts",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "Chart JS"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Flot"),
      SidebarButtonModel(id: 2, icon: Icons.panorama_fish_eye, title: "Inline"),
      SidebarButtonModel(id: 3, icon: Icons.panorama_fish_eye, title: "uPlot"),
    ],
  ),
  SidebarButtonModel(
    id: 4,
    icon: Icons.park,
    title: "UI Elements",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "General"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Icons"),
      SidebarButtonModel(id: 2, icon: Icons.panorama_fish_eye, title: "Buttons"),
      SidebarButtonModel(id: 3, icon: Icons.panorama_fish_eye, title: "Sliders"),
      SidebarButtonModel(id: 4, icon: Icons.panorama_fish_eye, title: "Modals & Alerts"),
      SidebarButtonModel(id: 5, icon: Icons.panorama_fish_eye, title: "Navbar & Tabs"),
      SidebarButtonModel(id: 6, icon: Icons.panorama_fish_eye, title: "Timeline"),
      SidebarButtonModel(id: 7, icon: Icons.panorama_fish_eye, title: "Ribbons"),
    ],
  ),
  SidebarButtonModel(
    id: 5,
    icon: Icons.feed,
    title: "Forms",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "General Elements"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Advanced Elements"),
      SidebarButtonModel(id: 2, icon: Icons.panorama_fish_eye, title: "Editors"),
      SidebarButtonModel(id: 3, icon: Icons.panorama_fish_eye, title: "Validation"),
    ],
  ),
  SidebarButtonModel(
    id: 6,
    icon: Icons.calendar_view_month,
    title: "Tables",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "Simple Tables"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Datatables"),
      SidebarButtonModel(id: 2, icon: Icons.panorama_fish_eye, title: "jsGrid"),
    ],
  ),
  SidebarButtonModel(
    id: 7,
    icon: Icons.calendar_today,
    title: "Calendar",
    badge: "2",
  ),
  SidebarButtonModel(
    id: 8,
    icon: Icons.collections,
    title: "Gallery",
  ),
  SidebarButtonModel(
    id: 9,
    icon: Icons.calendar_view_week,
    title: "Kanban Board",
  ),
  SidebarButtonModel(
    id: 10,
    icon: Icons.email,
    title: "Mailbox",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "Inbox"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Compose"),
      SidebarButtonModel(id: 2, icon: Icons.panorama_fish_eye, title: "Read"),
    ],
  ),
  SidebarButtonModel(
    id: 11,
    icon: Icons.menu_book,
    title: "Pages",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "Invoice"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Profile"),
      SidebarButtonModel(id: 2, icon: Icons.panorama_fish_eye, title: "E-Commerce"),
      SidebarButtonModel(id: 3, icon: Icons.panorama_fish_eye, title: "Projects"),
      SidebarButtonModel(id: 4, icon: Icons.panorama_fish_eye, title: "Project Add"),
      SidebarButtonModel(id: 5, icon: Icons.panorama_fish_eye, title: "Project Edit"),
      SidebarButtonModel(id: 6, icon: Icons.panorama_fish_eye, title: "Project Detail"),
      SidebarButtonModel(id: 7, icon: Icons.panorama_fish_eye, title: "Contacts"),
      SidebarButtonModel(id: 8, icon: Icons.panorama_fish_eye, title: "FAQ"),
      SidebarButtonModel(id: 9, icon: Icons.panorama_fish_eye, title: "Contact Us"),
    ],
  ),
  SidebarButtonModel(
    id: 12,
    icon: Icons.add_box,
    title: "Extras",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "Login & Register V1"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Login & Register V2"),
      SidebarButtonModel(id: 2, icon: Icons.panorama_fish_eye, title: "Lockscreen"),
      SidebarButtonModel(id: 3, icon: Icons.panorama_fish_eye, title: "Legacy User Menu"),
      SidebarButtonModel(id: 4, icon: Icons.panorama_fish_eye, title: "Language Menu"),
      SidebarButtonModel(id: 5, icon: Icons.panorama_fish_eye, title: "Error 404"),
      SidebarButtonModel(id: 6, icon: Icons.panorama_fish_eye, title: "Error 500"),
      SidebarButtonModel(id: 7, icon: Icons.panorama_fish_eye, title: "Pace"),
      SidebarButtonModel(id: 8, icon: Icons.panorama_fish_eye, title: "Blank Page"),
      SidebarButtonModel(id: 9, icon: Icons.panorama_fish_eye, title: "Starter Page"),
    ],
  ),
  SidebarButtonModel(
    id: 13,
    icon: Icons.search,
    title: "Search",
    subButtons: [
      SidebarButtonModel(id: 0, icon: Icons.panorama_fish_eye, title: "Simple Search"),
      SidebarButtonModel(id: 1, icon: Icons.panorama_fish_eye, title: "Enhanced"),
    ],
  ),
  SidebarButtonModel(
    id: 14,
    icon: Icons.more_horiz,
    title: "Tabbet IFrame Plugin",
  ),
  SidebarButtonModel(
    id: 15,
    icon: Icons.description,
    title: "Documentation",
  ),
];
