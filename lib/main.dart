import 'package:flutter/material.dart';
import 'package:pro/state/app_state.dart';
import 'package:pro/view/home_page.dart';
import 'package:provider/provider.dart';


//https://youtu.be/byeNf1csrzA


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),

      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
