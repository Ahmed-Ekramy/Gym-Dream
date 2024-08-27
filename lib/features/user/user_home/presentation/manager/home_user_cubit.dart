 import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/tabs/exercises_tab.dart';
import '../pages/tabs/history_tab.dart';
import '../pages/tabs/home_tab.dart';
import 'home_user_state.dart';

class HomeUserCubit extends Cubit<HomeUserState> {
  HomeUserCubit() : super( HomeUserInitial()) ;
  static HomeUserCubit get(context) => BlocProvider.of(context);
  final List<Widget> tabs = [
    const HomeTab(),
    const ExercisesTab(),
    const HistoryTab(),
  ];
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    emit( HomeUserChangeNav());
  }

}