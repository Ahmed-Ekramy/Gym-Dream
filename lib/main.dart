import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/bloc_observer.dart.dart';
import 'package:gym_dream/service_locator.dart';
import 'package:gym_dream/user_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  ServiceLocator().setUpServiceLocator();
  Bloc.observer = MyBlocObserver();
  runApp(const UserAppGym());

  // For device preview mode
  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (_) => const UserAppGym(),
  //   ),
  // );
}
