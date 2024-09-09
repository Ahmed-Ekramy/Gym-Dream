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
    const HistoryTab(),
    const ExercisesTab(),

  ];
  int currentIndex = 0;
  bool isAppBarVisible = true;
  bool isBottomNavVisible = true;

  void changeIndex(int index) {
    currentIndex = index;
    emit( HomeUserChangeNav());
  }
  void hideAppBarAndBottomNav() {
    if (isAppBarVisible || isBottomNavVisible) {
      isAppBarVisible = false;
      isBottomNavVisible = false;
      emit(HomeUserVisibilityChanged());
    }
  }

  void showAppBarAndBottomNav() {
    if (!isAppBarVisible || !isBottomNavVisible) {
      isAppBarVisible = true;
      isBottomNavVisible = true;
      emit(HomeUserVisibilityChanged());
    }
  }

}