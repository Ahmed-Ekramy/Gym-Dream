import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/bloc_observer.dart.dart';
import 'package:gym_dream/service_locator.dart';
import 'package:gym_dream/user_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ServiceLocator().setUpServiceLocator();
  Bloc.observer = MyBlocObserver();

  runApp(const UserAppGym());
}
