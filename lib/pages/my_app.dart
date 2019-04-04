// import 'package:agrorecflutter/pages/MyHomePage.dart';
// import 'package:agrorecflutter/pages/settings_page.dart';
import 'package:agrorecflutter/pages/Cultura/Cultura.dart';
import 'package:agrorecflutter/pages/ScanScreen.dart';
import 'package:agrorecflutter/pages/culturas_page.dart';
import 'package:agrorecflutter/pages/details_page.dart';
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
        '/culturas':(context)=>CulturasPage(cultura: [new Cultura('Brachiaria brizantha cv. Marandu','assets/cultura/brizantha.jpg',false),
                                                      new Cultura('Brachiaria Decumbens','assets/cultura/brizantha.jpg',false),
                                                      new Cultura('Brachiaria Humidicola','assets/cultura/brizantha.jpg',false),
                                                      new Cultura('Brachiaria Lianeiro','assets/cultura/brizantha.jpg',false),
                                                      new Cultura('Brachiaria Ruziziensis','assets/cultura/brizantha.jpg',false),
                                                      new Cultura('Brachiaria Xaraés/MG-5','assets/cultura/brizantha.jpg',false)
                                                      ]),
        '/settings':(context)=>SettingsPage(),
        '/details':(context)=>DetailsPage(),
        '/scan':(context)=>ScanScreen()

      },
    );
  }
}