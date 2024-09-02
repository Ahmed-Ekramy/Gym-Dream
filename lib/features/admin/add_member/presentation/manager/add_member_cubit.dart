import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'add_member_state.dart';

class AddMemberCubit extends Cubit<AddMemberState> {
  AddMemberCubit() : super(AddMemberInitial());

  File? image;
  Future<File?> uploadImageFromGalleryModel({
    required ImagePicker picker,
  }) async {
    try {
      XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        image = File(pickedFile.path);
        emit(UploadImageFromGallerySuccessState(image: pickedFile));
        return image; // Return the image file
      } else {
        emit(const UploadImageErrorState(errorMessage: "No image picked"));
        return null;
      }
    } catch (e) {
      emit(UploadImageErrorState(errorMessage: e.toString()));
      return null;
    }
  }

  String? gender; // Add this field
  void updateGender(String selectedGender) {
    gender = selectedGender;
    emit(AddMemberGenderUpdatedState()); // Emit a new state if needed
  }
}
