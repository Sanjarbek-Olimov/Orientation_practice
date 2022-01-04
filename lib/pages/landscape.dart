import 'package:flutter/material.dart';

class LandscapePage extends StatefulWidget {
  static const String id = "landscape_page";

  const LandscapePage({Key? key}) : super(key: key);

  @override
  _LandscapePageState createState() => _LandscapePageState();
}

class _LandscapePageState extends State<LandscapePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3)),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Button",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3)),
              child: Image.asset("assets/images/image1.jpg"),
              padding: EdgeInsets.symmetric(horizontal: 20),)

            ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3)),
              child: Image.asset("assets/images/image2.jpg"),
              padding: EdgeInsets.symmetric(horizontal: 20),)

            ),
        ],
      ),
    );
  }
}
