import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orientation/pages/home_page.dart';
import 'package:orientation/pages/landscape.dart';
import 'package:orientation/pages/portrait.dart';
import 'package:orientation/pages/tablet_page.dart';

void main() {

  // WidgetsFlutterBinding.ensureInitialized();
  //
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        PortraitPage.id: (context) => PortraitPage(),
        LandscapePage.id: (context) => LandscapePage(),
        TabletPage.id: (context) => TabletPage()
      },
    );
  }
}