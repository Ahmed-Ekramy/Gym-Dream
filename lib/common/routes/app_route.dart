import 'package:flutter/material.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/features/admin/admin_home/auth/pages/log_in_page.dart';
import 'package:gym_dream/features/admin/admin_home/presentation/pages/admin_home_view.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const LogInView(),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const AdminHomeView(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LogInView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
