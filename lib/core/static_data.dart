import 'package:admin_lte/views/pages.dart';
import 'package:flutter/material.dart';

List<List<Widget>> pages = [
  /// Dashboard
  /// pages [0, 1, 2]
  [
    DashboardV1(),
    DashboardV2(),
    DashboardV3(),
  ],

  /// Widgets
  /// pages [3]
  [
    WidgetsBase(),
  ],

  /// Layout Options
  /// pages [4, 5, 6, 7, 8, 9, 10, 11]
  [
    TopNavigation(),
    TopNavigationAndSidebar(),
    Boxed(),
    FixedSidebar(),
    FixedSidebarCustom(),
    FixedNavbar(),
    FixedFooter(),
    CollapsedSidebar(),
  ],

  /// Charts
  /// pages [12, 13, 14, 15]
  [
    ChartJS(),
    Flot(),
    Inline(),
    UPlot(),
  ],

  /// UI Elements
  /// pages [13, 14, 15, 16, 17, 18, 19, 20]
  [
    General(),
    IconsUI(),
    Buttons(),
    Sliders(),
    ModalsAndAlerts(),
    NavbarsAndTabs(),
    Timeline(),
    Ribbons(),
  ],

  /// Forms
  /// pages [21, 22, 23, 24]
  [
    GeneralElements(),
    AdvancedElements(),
    Editors(),
    Validations(),
  ],

  /// Tables
  /// pages [25, 26, 27]
  [
    SimpleTables(),
    DataTables(),
    JSGrid(),
  ],

  /// Calendar
  /// pages [28]
  [
    CalendarBase(),
  ],

  /// Gallery
  /// pages [29]
  [
    GalleryBase(),
  ],

  /// Kanban Board
  /// pages [30]
  [
    KanbanBoardBase(),
  ],

  /// Mailbox
  /// pages [31, 32, 33]
  [
    Inbox(),
    Compose(),
    Read(),
  ],

  /// Pages
  /// pages [32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
  [
    Invoice(),
    Profile(),
    ECommerce(),
    Projects(),
    ProjectAdd(),
    ProjectEdit(),
    ProjectDetail(),
    Contacts(),
    FAQ(),
    ContactUs(),
  ],

  /// Extras
  /// pages [42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
  [
    LoginAndRegisterV1(),
    LoginAndRegisterV2(),
    Lockscreen(),
    LegacyUserMenu(),
    LanguageMenu(),
    Error404(),
    Error500(),
    Pace(),
    BlankPage(),
    StarterPage(),
  ],

  /// Search
  /// pages [52, 53]
  [
    SimpleSearch(),
    Enhanced(),
  ],

  /// Tabbed IFrame Plugin
  /// pages [54]
  [
    TabbedIFramePluginBase(),
  ],

  /// Documentation
  /// pages [55]
  [
    DocumentationBase(),
  ],
];

List<List<String>> pageNames = [
  /// Dashboard
  /// pages [0, 1, 2]
  [
    "DashboardV1",
    "DashboardV2",
    "DashboardV3",
  ],

  /// Widgets
  /// pages [3]
  [
    "Widgets",
  ],

  /// Layout Options
  /// pages [4, 5, 6, 7, 8, 9, 10, 11]
  [
    "TopNavigation",
    "TopNavigationAndSidebar",
    "Boxed",
    "FixedSidebar",
    "FixedSidebarCustom",
    "FixedNavbar",
    "FixedFooter",
    "CollapsedSidebar",
  ],

  /// Charts
  /// pages [12, 13, 14, 15]
  [
    "ChartJS",
    "Flot",
    "Inline",
    "UPlot",
  ],

  /// UI Elements
  /// pages [13, 14, 15, 16, 17, 18, 19, 20]
  [
    "General",
    "IconsUI",
    "Buttons",
    "Sliders",
    "ModalsAndAlerts",
    "NavbarsAndTabs",
    "Timeline",
    "Ribbons",
  ],

  /// Forms
  /// pages [21, 22, 23, 24]
  [
    "GeneralElements",
    "AdvancedElements",
    "Editors",
    "Validations",
  ],

  /// Tables
  /// pages [25, 26, 27]
  [
    "SimpleTables",
    "DataTables",
    "JSGrid",
  ],

  /// Calendar
  /// pages [28]
  [
    "CalendarBase",
  ],

  /// Gallery
  /// pages [29]
  [
    "GalleryBase",
  ],

  /// Kanban Board
  /// pages [30]
  [
    "KanbanBoardBase",
  ],

  /// Mailbox
  /// pages [31, 32, 33]
  [
    "Inbox",
    "Compose",
    "Read",
  ],

  /// Pages
  /// pages [32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
  [
    "Invoice",
    "Profile",
    "ECommerce",
    "Projects",
    "ProjectAdd",
    "ProjectEdit",
    "ProjectDetail",
    "Contacts",
    "FAQ",
    "ContactUs",
  ],

  /// Extras
  /// pages [42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
  [
    "LoginAndRegisterV1",
    "LoginAndRegisterV2",
    "Lockscreen",
    "LegacyUserMenu",
    "LanguageMenu",
    "Error404",
    "Error500",
    "Pace",
    "BlankPage",
    "StarterPage",
  ],

  /// Search
  /// pages [52, 53]
  [
    "SimpleSearch",
    "Enhanced",
  ],

  /// Tabbed IFrame Plugin
  /// pages [54]
  [
    "TabbedIFramePluginBase",
  ],

  /// Documentation
  /// pages [55]
  [
    "DocumentationBase",
  ],
];
