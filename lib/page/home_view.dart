import 'package:flutter/material.dart';
import 'package:mvvmproject/stores/app_store.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<AppStore>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(store.picture),
          SizedBox(height: 12),
          Text(store.name),
          SizedBox(height: 12),
          Text(store.email),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}