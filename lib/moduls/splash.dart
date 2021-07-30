import 'dart:async';
import 'package:flutter/material.dart';
import 'package:img_picker_send/layout/home_layout.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getPermissions();

    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => MultipleImageLayout())));
    super.initState();
  }

  getPermissions() async {
    await Permission.storage.request();
    await Permission.camera.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(child: Text('img...')),
      ),
    );
  }
}
