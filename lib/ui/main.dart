import 'package:flutter/material.dart';
import 'package:laundry/ui/Home.dart';
import 'package:laundry/ui/start.dart';
import 'Sign_in.dart';
import 'content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home:SignIn(),
      home:Home(),
      //home:Content(),
      //home:Start(),
      debugShowCheckedModeBanner: true,
    );
  }
}
