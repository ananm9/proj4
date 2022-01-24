import 'package:flutter/material.dart';
import 'package:proj4/widget/root.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RootWidget(), title: 'Mezo Project');
  }
}
