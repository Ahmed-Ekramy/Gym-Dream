import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/features/admin/admin_home/presentation/pages/admin_home_view.dart';

import '../../features/user/user_home/presentation/manager/home_user_cubit.dart';
import '../../features/user/user_home/presentation/pages/user_home_layout_view.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => HomeUserCubit( ),
                child: UserHomeLayoutView(),
              ),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const AdminHomeView(),
        );
        // case Routes.login:
        //   return MaterialPageRoute(
        //     builder: (_) => const LogInView(),
        //   );
        return MaterialPageRoute(builder: (_) => const UserHomeLayoutView());
    //  case Routes.login:
    //   return MaterialPageRoute(builder: (_) => const AdminHomeView());
    // case Routes.login:
    // return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
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
