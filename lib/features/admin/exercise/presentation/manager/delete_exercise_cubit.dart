import 'package:flutter_bloc/flutter_bloc.dart';

class ExercisesCubit extends Cubit<List<String>> {
  ExercisesCubit() : super(List.generate(10, (index) => 'Exercise $index'));

  void deleteExercise(int index) {
    final updatedList = List<String>.from(state);
    updatedList.removeAt(index);
    emit(updatedList);
  }
}
