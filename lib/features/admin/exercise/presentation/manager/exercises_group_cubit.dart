import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseGroupCubit extends Cubit<String> {
  ExerciseGroupCubit() : super('chest'); // Default selected group

  // Update the selected group
  void selectGroup(String group) {
    emit(group);
  }
}
