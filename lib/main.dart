import 'dart:ui';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:test_theme/route.dart';
import 'package:test_theme/theme/mode.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var bright=Brightness.light;
    return  ChangeNotifierProvider<ThemeNotifier>(
      create:(context)=>ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context,t,child){
          return  MaterialApp(
            theme: t.getTheme(),

            initialRoute: '/home',
            onGenerateRoute: RouteGen.routes,
          );
        },
      )
    );
  }
}
