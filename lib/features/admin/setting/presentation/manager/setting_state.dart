part of 'setting_cubit.dart';

sealed class SettingState extends Equatable {
  const SettingState();

  @override
  List<Object> get props => [];
}

final class SettingInitial extends SettingState {}

final class UploadImageFromGallerySuccessState extends SettingState {
  final XFile image;
  const UploadImageFromGallerySuccessState({required this.image});
}

final class UploadImageErrorState extends SettingState {
  final String errorMessage;
  const UploadImageErrorState({required this.errorMessage});
}

final class AddMemberGenderUpdatedState extends SettingState {}

final class AddMemberDateUpdatedState extends SettingState {}

final class AddMemberValidationErrorState extends SettingState {}
