import 'package:flutter/material.dart';
import 'package:musicplayer/pages/firstscreen.dart';

import 'pages/secondscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player App',
      home: FirstScreen(),
    );
  }
}
