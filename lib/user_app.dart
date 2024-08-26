import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'common/routes/app_route.dart';
import 'common/routes/route.dart';

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
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.grey,
                  selectedIconTheme: IconThemeData(size: 20.sp),
                  unselectedIconTheme: IconThemeData(size: 18.sp))),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoute.onGenerateRoute,
          initialRoute: Routes.initialRoute,
        );
      },
    );
  }
}
