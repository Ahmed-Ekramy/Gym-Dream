import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/features/admin/auth/pages/admin_login_view.dart';
import 'package:gym_dream/features/admin/auth/pages/choosing_view.dart';
import 'package:gym_dream/features/admin/auth/pages/create_new_password.dart';
import 'package:gym_dream/features/admin/auth/pages/forgot_password.dart';
import 'package:gym_dream/features/admin/auth/pages/otp_view.dart';
import 'package:gym_dream/features/admin/auth/pages/password_changed_successfully_view.dart';
import 'package:gym_dream/features/admin/layout/presentation/pages/layout_views.dart';
import 'package:gym_dream/features/user/auth/pages/user_login_view.dart';
import 'package:gym_dream/features/user/user_home/presentation/manager/home_user_cubit.dart';
import 'package:gym_dream/features/user/user_home/presentation/pages/user_home_layout_view.dart';
import 'package:gym_dream/service_locator.dart';

import '../../features/admin/layout/presentation/manager/cubit/layout_cubit.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const UserLoginView(),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const UserLoginView(),
        );

      case Routes.homeUserLayout:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeUserCubit(),
            child: const UserHomeLayoutView(),
          ),
        );
      case Routes.homeAdminLayout:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => serviceLocator.get<LayoutCubit>(),
            child: const LayOutViews(),
          ),
        );
      case Routes.choosingView:
        return MaterialPageRoute(
          builder: (_) => const ChoosingView(),
        );
      case Routes.userLogin:
        return MaterialPageRoute(
          builder: (_) => const UserLoginView(),
        );
      case Routes.adminLogin:
        return MaterialPageRoute(
          builder: (_) => const AdminLoginView(),
        );
      case Routes.forgrtPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPassword(),
        );
      case Routes.userOtp:
        return MaterialPageRoute(
          builder: (_) => const OtpView(),
        );
      case Routes.adminOtp:
        return MaterialPageRoute(
          builder: (_) => const OtpView(),
        );
      case Routes.creatNewPassword:
        return MaterialPageRoute(
          builder: (_) => const CreateNewPassword(),
        );
      case Routes.passwordChangedSuccessfully:
        return MaterialPageRoute(
          builder: (_) => const PasswordChangedSuccessfullyView(),
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
