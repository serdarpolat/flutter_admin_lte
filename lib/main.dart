import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SidebarProvider()),
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
