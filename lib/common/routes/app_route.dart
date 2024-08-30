import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/features/admin/layout/presentation/pages/layout_views.dart';
import 'package:gym_dream/features/authentication/admin/pages/admin_login_view.dart';
import 'package:gym_dream/features/authentication/admin/pages/create_new_password_for_admin.dart';
import 'package:gym_dream/features/authentication/admin/pages/forgot_password_for_admin.dart';
import 'package:gym_dream/features/authentication/admin/pages/otp_view_for_admin.dart';
import 'package:gym_dream/features/authentication/admin/pages/password_changed_successfully_view_for_admin.dart';
import 'package:gym_dream/features/authentication/choosing_view.dart';
import 'package:gym_dream/features/authentication/trainee/pages/create_new_password_for_trainee.dart';
import 'package:gym_dream/features/authentication/trainee/pages/forgot_password_for_trainee.dart';
import 'package:gym_dream/features/authentication/trainee/pages/otp_view_for_trainee.dart';
import 'package:gym_dream/features/authentication/trainee/pages/password_changed_successfully_view_for_trainee.dart';
import 'package:gym_dream/features/authentication/trainee/pages/trainee_login_view.dart';
import 'package:gym_dream/features/user/user_home/presentation/manager/home_user_cubit.dart';
import 'package:gym_dream/features/user/user_home/presentation/pages/user_home_layout_view.dart';
import 'package:gym_dream/service_locator.dart';

import '../../features/admin/layout/presentation/manager/cubit/layout_cubit.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const TraineeLoginView(),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const TraineeLoginView(),
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
      case Routes.traineeLogin:
        return MaterialPageRoute(
          builder: (_) => const TraineeLoginView(),
        );
      case Routes.adminLogin:
        return MaterialPageRoute(
          builder: (_) => const AdminLoginView(),
        );
      case Routes.forgotPasswordForAdmin:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordForAdmin(),
        );
      case Routes.forgotPasswordForTrainee:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordForTrainee(),
        );
      case Routes.traineeOtp:
        return MaterialPageRoute(
          builder: (_) => const OtpViewForTrainee(),
        );
      case Routes.adminOtp:
        return MaterialPageRoute(
          builder: (_) => const OtpViewForAdmin(),
        );
      case Routes.createNewPasswordForAdmin:
        return MaterialPageRoute(
          builder: (_) => const CreateNewPasswordForAdmin(),
        );
      case Routes.passwordChangedSuccessfullyForAdmin:
        return MaterialPageRoute(
          builder: (_) => const PasswordChangedSuccessfullyViewForAdmin(),
        );
      case Routes.createNewPasswordForTrainee:
        return MaterialPageRoute(
          builder: (_) => const CreateNewPasswordForTrainee(),
        );
      case Routes.passwordChangedSuccessfullyForTrainee:
        return MaterialPageRoute(
          builder: (_) => const PasswordChangedSuccessfullyViewForTrainee(),
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
