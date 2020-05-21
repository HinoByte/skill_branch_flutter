import 'package:FlutterGalleryApp/screens/photo_screen.dart';
import 'package:flutter/material.dart';
import 'package:FlutterGalleryApp/screens/feed_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Feed(),
    );
  }
}
