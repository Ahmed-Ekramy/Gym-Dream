import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class OtpCubit extends Cubit<int> {
  OtpCubit() : super(60) {
    startTimer();
  }

  Timer? timer;
  int attempt = 1;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state == 0) {
        timer.cancel();
      } else {
        emit(state - 1);
      }
    });
  }

  void restartTimer() {
    if (attempt == 1) {
      emit(180);
    } else if (attempt == 2) {
      emit(300);
    } else {
      emit(0);
    }
    attempt++;
    startTimer();
  }

  String get timerText {
    final minutes = (state ~/ 60).toString().padLeft(2, '0');
    final seconds = (state % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Future<void> close() {
    timer?.cancel();
    return super.close();
  }
}
