import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/generated/l10n.dart';
import 'package:image_picker/image_picker.dart';

part 'exercise_state.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  ExerciseCubit() : super(ExerciseInitial());
  static ExerciseCubit get(BuildContext context) => BlocProvider.of(context);
  String selectedGroup = 'chest';
  List<String> _exercises = [];
  File? image;
  List<String> dropList(BuildContext context) {
    final s = S.of(context);
    return [
      s.chest,
      s.back,
      s.shoulders,
      s.legs,
      s.biceps,
      s.triceps,
      s.rest,
    ];
  }

  void loadExercises() {
    try {
      _exercises = [
        'benchPress',
        'deadlift',
        'squat',
        'overheadPress',
        'pullUp',
        'bicepCurl'
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
    emit(DropDownState(group, image: image));
  }
}
