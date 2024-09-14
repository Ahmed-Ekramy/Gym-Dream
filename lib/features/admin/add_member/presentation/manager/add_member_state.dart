part of 'add_member_cubit.dart';

sealed class AddMemberState extends Equatable {
  const AddMemberState();

  @override
  List<Object> get props => [];
}

final class AddMemberInitial extends AddMemberState {}

final class UploadImageFromGallerySuccessState extends AddMemberState {
  final XFile image;
  const UploadImageFromGallerySuccessState({required this.image});
}

final class UploadImageErrorState extends AddMemberState {
  final String errorMessage;
  const UploadImageErrorState({required this.errorMessage});
}

final class AddMemberGenderUpdatedState extends AddMemberState {}

final class AddMemberDateUpdatedState extends AddMemberState {}

final class AddMemberValidationErrorState extends AddMemberState {}

final class SwitchVisibleState extends AddMemberState {
  final bool passVisibility;
  const SwitchVisibleState({required this.passVisibility});
}
