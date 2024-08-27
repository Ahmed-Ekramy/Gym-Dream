import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'common/routes/app_route.dart';
import 'core/app_color.dart';

class UserAppGym extends StatelessWidget {
  const UserAppGym({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          theme: ThemeData(
             bottomNavigationBarTheme:
               const BottomNavigationBarThemeData(
                backgroundColor: AppColor.primaryLight,
                selectedItemColor: AppColor.primary,
                unselectedItemColor: AppColor.grey,
              ),
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoute.onGenerateRoute,
          initialRoute: Routes.initialRoute,
        );
      },
    );
  }
}
