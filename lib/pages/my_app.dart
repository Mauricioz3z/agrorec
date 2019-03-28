// import 'package:agrorecflutter/pages/MyHomePage.dart';
// import 'package:agrorecflutter/pages/settings_page.dart';
import 'package:agrorecflutter/pages/home_page.dart';
import 'package:agrorecflutter/pages/settings_page.dart';
import 'package:agrorecflutter/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

         brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      // home:  WelcomePage(),
      routes: {
        '/':(context ) =>WelcomePage(),
        '/home':(context ) =>HomePage(),
        '/settings':(context)=>SettingsPage()
      },
    );
  }
}