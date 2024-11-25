import 'package:apptest1/view/widget/register_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String registerView = '/registerView';

  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case registerView:
        return MaterialPageRoute(
          builder: (context) => const RegisterView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defind for ${setting.name}"),
            ),
          ),
        );
    }
  }
}
