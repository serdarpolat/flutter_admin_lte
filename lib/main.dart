import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SidebarProvider()),
        ChangeNotifierProvider(create: (context) => PageProvider()),
      ],
      child: MaterialApp(
        title: 'AdminLTE',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "SourceSansPro",
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
