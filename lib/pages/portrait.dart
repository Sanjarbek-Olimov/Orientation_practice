import 'package:flutter/material.dart';

class PortraitPage extends StatefulWidget {
  static const String id = "portrait_page";
  const PortraitPage({Key? key}) : super(key: key);

  @override
  _PortraitPageState createState() => _PortraitPageState();
}

class _PortraitPageState extends State<PortraitPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Row(
        children: [
          Container(
            width: 100,
            height: MediaQuery.of(context).size.height,
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
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3)),
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        child: Image.asset("assets/images/image1.jpg"),
                        padding: EdgeInsets.symmetric(horizontal: 20),)),
                  Divider(
                    thickness: 5,
                    color: Colors.blue,
                  ),
                  Expanded(
                      child: Container(
                        child: Image.asset("assets/images/image2.jpg"),
                        padding: EdgeInsets.symmetric(horizontal: 20),)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
