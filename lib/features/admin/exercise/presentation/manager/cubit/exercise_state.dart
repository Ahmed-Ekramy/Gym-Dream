part of 'exercise_cubit.dart';

sealed class ExerciseState extends Equatable {
  const ExerciseState();

  @override
  List<Object?> get props => [];
}

final class ExerciseInitial extends ExerciseState {}

final class UploadImageExerciseSuccessState extends ExerciseState {
  final XFile image;
  const UploadImageExerciseSuccessState({required this.image});

  @override
  List<Object> get props => [image];
}

final class DropDownState extends ExerciseState {
  final String selectedGroup;
  final File? image; // Include image in the state

  const DropDownState(this.selectedGroup, {this.image});

  @override
  List<Object?> get props => [selectedGroup, image];
}

final class UploadImageExeciseErrorState extends ExerciseState {
  final String errorMessage;
  const UploadImageExeciseErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

final class ExerciseListError extends ExerciseState {
  final String errorMessage;
  const ExerciseListError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

final class ExerciseListSuccess extends ExerciseState {
  final List<String> exercises;
  const ExerciseListSuccess({required this.exercises});

  @override
  List<Object> get props => [exercises];
}
