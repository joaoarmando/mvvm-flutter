import 'package:flutter/material.dart';
import 'package:mvvmproject/views/signup_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM Flutter',
      theme: ThemeData(      
        primarySwatch: Colors.blue,
      ),
      home: SignUpView(),
    );
  }
}
