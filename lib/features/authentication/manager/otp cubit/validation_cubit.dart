import 'package:flutter_bloc/flutter_bloc.dart';

class ValidationCubit extends Cubit<String?> {
  ValidationCubit() : super(null);

  void setErrorMessage(String? message) {
    emit(message);
  }

  void clearErrorMessage() {
    emit(null);
  }
}
