import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_theme/home.dart';
import 'package:test_theme/home_test.dart';

class RouteGen {
 static Route<dynamic> routes(RouteSettings settings) {

    switch(settings.name)
    {
      case '/home':
        return MaterialPageRoute(builder: (_)=>Home());
        case '/homeTest':
        return MaterialPageRoute(builder: (_)=>HomeTest());

    }





    return MaterialPageRoute(
        builder: (builder) => Scaffold(
              body: Center(
                child: Text("Error Routes"),
              ),
            ));
  }
}
