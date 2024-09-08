import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/features/admin/add_member/presentation/manager/add_member_cubit.dart';
import 'package:gym_dream/features/admin/add_member/presentation/pages/admin_add_member_view.dart';
import 'package:gym_dream/features/admin/add_member/presentation/pages/admin_confirm_user.dart';
import 'package:gym_dream/features/admin/add_member/presentation/pages/package_details_view.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/qr_code_view.dart';
import 'package:gym_dream/features/admin/layout/presentation/pages/layout_views.dart';
import 'package:gym_dream/features/admin/our_member/presentation/pages/our_member_view.dart';
import 'package:gym_dream/features/admin/search/presentation/pages/admin_search_view.dart';
import 'package:gym_dream/features/admin/search/presentation/widgets/admin_search_result_view.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/pages/admin_trusted_user_view.dart';
import 'package:gym_dream/features/admin/user_profile/presentation/pages/specific_user_history.dart';
import 'package:gym_dream/features/admin/user_profile/presentation/pages/user_data_view.dart';
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
import 'package:gym_dream/features/user/exercieses_details/presentation/page/exercieses_details.dart';
import 'package:gym_dream/features/user/notification_user/presentation/pages/notification_user_view.dart';
import 'package:gym_dream/features/user/user_home/presentation/manager/home_user_cubit.dart';
import 'package:gym_dream/features/user/user_home/presentation/pages/user_home_layout_view.dart';
import 'package:gym_dream/service_locator.dart';

import '../../features/admin/layout/presentation/manager/cubit/layout_cubit.dart';
import '../../features/user/User_profile/presentation/pages/user_profile_view.dart';
import '../../features/user/our_branches/presentation/pages/our_branches_view.dart';

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
      case Routes.ourBranchesView:
        return MaterialPageRoute(
          builder: (_) => const OurBranchesView(),
        );
      case Routes.packageDetailsView:
        return MaterialPageRoute(
          builder: (_) => const PackageDetailsView(),
        );
      case Routes.adminConfirmUser:
        return MaterialPageRoute(
          builder: (_) => const AdminConfirmUser(),
        );
      case Routes.qrCodeView:
        return MaterialPageRoute(
          builder: (_) => const QrCodeView(),
        );
      case Routes.adminTrustedUserView:
        return MaterialPageRoute(
          builder: (_) => const TrustedUserView(),
        );
      case Routes.adminAddMemberView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AddMemberCubit(),
            child: const AdminAddMemberView(),
          ),
        );
      case Routes.exerciseDetails:
        return MaterialPageRoute(
          builder: (_) => const ExercisesDetails(),
        );
      case Routes.userProfile:
        return MaterialPageRoute(
          builder: (_) => const UserProfileView(),
        );
      case Routes.userNotification:
        return MaterialPageRoute(
          builder: (_) => const NotificationUserView(),
        );
      case Routes.ourMemberView:
        return MaterialPageRoute(
          builder: (_) => const OurMemberView(),
        );
      case Routes.adminSearchView:
        return MaterialPageRoute(
          builder: (_) => const AdminSearchView(),
        );
      case Routes.adminSearchResultView:
        return MaterialPageRoute(
          builder: (_) => const AdminSearchResultView(),
        );
      case Routes.userDataView:
        return MaterialPageRoute(
          builder: (_) => const UserDataView(),
        );
      case Routes.specificUserHistor:
        return MaterialPageRoute(
          builder: (_) => const SpecificUserHistory(),
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
