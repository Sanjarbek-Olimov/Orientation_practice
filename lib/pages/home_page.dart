import 'package:flutter/material.dart';
import 'package:orientation/pages/landscape.dart';
import 'package:orientation/pages/portrait.dart';
import 'package:orientation/pages/tablet_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bool usingMobileLayout = MediaQuery.of(context).size.shortestSide < 600;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait && usingMobileLayout) {
          return const PortraitPage();
        } else if (orientation == Orientation.portrait) {
          return const TabletPage();
        } return const LandscapePage();
      }),
    );
  }
}
