import 'package:flutter/material.dart';
import 'package:mvvmproject/views/signup_view.dart';
import 'package:provider/provider.dart';

import 'stores/app_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppStore>.value(value: AppStore()),
      ],
      child: MaterialApp(
        title: 'MVVM Flutter',
        theme: ThemeData(      
          primarySwatch: Colors.blue,
        ),
        home: SignUpView(),
      ),
    );
  }
}
