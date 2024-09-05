import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

part 'add_member_state.dart';

class AddMemberCubit extends Cubit<AddMemberState> {
  AddMemberCubit() : super(AddMemberInitial());

  var formKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  var fullNameController = TextEditingController();
  var iDController = TextEditingController();
  var watsAppController = TextEditingController();
  var passWordController = TextEditingController();
  var confirmPassWordController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  Future<void> selectDate(BuildContext context,
      {required TextEditingController date}) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1924),
      lastDate: DateTime(2014),
    );

    if (selectedDate != null) {
      date.text = DateFormat('yyyy-MM-dd').format(selectedDate);
      emit(AddMemberDateUpdatedState()); // Emit state to update UI if needed
    }
  }

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
