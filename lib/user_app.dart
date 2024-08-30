import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_color.dart';
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
      builder: (_, child) {
        return BlocProvider(
          create: (_) => LocaleCubit(),
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
                initialRoute: Routes.choosingView,
              );
            },
          ),
        );
      },
    );
  }
}
