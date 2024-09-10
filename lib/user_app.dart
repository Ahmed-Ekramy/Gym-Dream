import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/cubit/local_language_cubit.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/admin/layout/presentation/manager/cubit/layout_cubit.dart';
import 'package:gym_dream/features/authentication/auth_wrapper.dart';
import 'package:gym_dream/features/authentication/manager/auth%20cubit/auth_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';
import 'package:gym_dream/service_locator.dart';

import 'common/routes/app_route.dart';
import 'features/user/user_home_layout/presentation/manager/home_user_cubit.dart';

class UserAppGym extends StatelessWidget {
  const UserAppGym({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(390, 844),
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
            BlocProvider<LayoutCubit>(
              create: (context) => serviceLocator.get<LayoutCubit>(),
            ),
          ],
          child: BlocBuilder<LocaleCubit, Locale>(
            builder: (context, locale) {
              return MaterialApp(
                locale: context.watch<LocaleCubit>().state,
                supportedLocales: const [
                  Locale('en', 'US'),
                  Locale('ar', 'EG'),
                ],
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                theme: ThemeData(
                  scaffoldBackgroundColor: AppColor.white,
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
