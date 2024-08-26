 import 'package:flutter/material.dart';

import '../../features/user/user_home/presentation/pages/user_home_layout_view.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
        switch (settings.name) {
            case '/homeUser':
                return MaterialPageRoute(builder: (_) =>  const UserHomeLayoutView());
            case '/login':
               // return MaterialPageRoute(builder: (_) => const LoginScreen());
            default:
                return MaterialPageRoute(builder: (_) => Scaffold(
                    body: Center(
                        child: Text('No route defined for ${settings.name}'),
                    ),
                ));
        }
    }
 }