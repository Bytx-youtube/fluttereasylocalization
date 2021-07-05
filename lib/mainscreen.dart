import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hello".tr().toString().toUpperCase()),
            Text("text1".tr().toString()),
            GestureDetector(
              onTap: () async {
                context.locale = Locale('en', 'US');
              },
              child: Container(
                height: 40,
                width: 190,
                color: Colors.blue,
                child: Text("Switch to EN - US"),
              ),
            ),
            GestureDetector(
              onTap: () async {
                context.locale = Locale('en', 'GB');
              },
              child: Container(
                height: 40,
                width: 190,
                color: Colors.red,
                child: Text("Switch to EN - GB"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
