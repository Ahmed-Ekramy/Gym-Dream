import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'exercise_state.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  ExerciseCubit() : super(ExerciseInitial());

  static ExerciseCubit get(context) => BlocProvider.of(context);

  List<String> dropList = [
    'chest',
    'back',
    'shoulders',
    'legs',
    'biceps',
    'triceps',
    'rest'
  ];

  String selectedGroup = 'chest';

  List<String> _exercises = [];

  File? image;
  void loadExercises() {
    try {
      _exercises = [
        'Bench Press',
        'Deadlift',
        'Squat',
        'Overhead Press',
        'Pull-Up',
        'Bicep Curl'
      ];

      emit(ExerciseListSuccess(exercises: _exercises));
    } catch (e) {
      emit(ExerciseListError(errorMessage: e.toString()));
    }
  }

  void deleteExercise(int index) {
    if (state is ExerciseListSuccess) {
      final currentState = state as ExerciseListSuccess;
      final updatedList = List<String>.from(currentState.exercises);
      updatedList.removeAt(index);
      emit(ExerciseListSuccess(exercises: updatedList));
    }
  }

  Future<File?> uploadImageFromGalleryModel({
    required ImagePicker picker,
  }) async {
    try {
      XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        image = File(pickedFile.path);
        emit(UploadImageExerciseSuccessState(image: pickedFile));
        return image;
      } else {
        emit(const UploadImageExeciseErrorState(
            errorMessage: "No image picked"));
        return null;
      }
    } catch (e) {
      emit(UploadImageExeciseErrorState(errorMessage: e.toString()));
      return null;
    }
  }

  void selectGroup(String group) {
    selectedGroup = group;
    emit(DropDownState(group));
  }
}
