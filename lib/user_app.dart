import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/authentication/choosing_view.dart';
import 'package:gym_dream/features/authentication/manager/auth%20cubit/auth_cubit.dart';
import 'package:gym_dream/features/authentication/manager/auth%20cubit/auth_status.dart';
import 'package:gym_dream/features/user/user_home/presentation/manager/home_user_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

import 'common/cubit/change_language_cubit.dart';
import 'common/routes/app_route.dart';

class UserAppGym extends StatelessWidget {
  const UserAppGym({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<LocaleCubit>(
              create: (context) => LocaleCubit(),
            ),
            BlocProvider<AuthCubit>(
              create: (context) => AuthCubit()..checkLoginStatus(),
            ),
            BlocProvider<HomeUserCubit>(
              create: (context) => HomeUserCubit(),
            ),
          ],
          child: BlocBuilder<LocaleCubit, Locale>(
            builder: (context, locale) {
              return MaterialApp(
                locale: locale,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                theme: ThemeData(
                  textSelectionTheme: const TextSelectionThemeData(
                    cursorColor: AppColor.primary,
                    selectionColor: AppColor.primary,
                    selectionHandleColor: AppColor.primary,
                  ),
                ),
                debugShowCheckedModeBanner: false,
                onGenerateRoute: AppRoute.onGenerateRoute,
                home: const AuthWrapper(),
              );
            },
          ),
        );
      },
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoggedOut) {
          Future.delayed(Duration.zero, () {
            AppNavigation.navigateAndRemoveUntil(
              context: context,
              newRoute: Routes.choosingView,
            );
          });
        } else if (state is AuthLoggedIn) {
          Future.delayed(Duration.zero, () {
            if (state.isAdmin) {
              AppNavigation.navigateAndRemoveUntil(
                context: context,
                newRoute: Routes.homeAdminLayout,
              );
            } else {
              AppNavigation.navigateAndRemoveUntil(
                context: context,
                newRoute: Routes.homeUserLayout,
              );
            }
          });
        }
      },
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthLoggedIn) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          } else if (state is AuthLoggedOut) {
            return const ChoosingView();
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: AppColor.primary,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
