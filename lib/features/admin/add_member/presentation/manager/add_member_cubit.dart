import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

part 'add_member_state.dart';

class AddMemberCubit extends Cubit<AddMemberState> {
  AddMemberCubit() : super(AddMemberInitial());

  // Form key for validation
  // Form key for validation
  var formKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  // Controllers

  // Controllers
  var fullNameController = TextEditingController();
  var iDController = TextEditingController();
  var watsAppController = TextEditingController();
  var passWordController = TextEditingController();
  var confirmPassWordController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();

  // Image file
  File? image;

  // Gender
  String? gender;

  // Select Date Method (Handles both Start and End Dates)

  // Select Date Method (Handles both Start and End Dates)
  Future<void> selectDate(BuildContext context,
      {required TextEditingController date, bool isStartDate = false}) async {
    DateTime initialDate = DateTime.now();
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1924),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      date.text = DateFormat('yyyy-MM-dd').format(selectedDate);

      if (isStartDate) {
        DateTime endDate = selectedDate.add(const Duration(days: 30));
        endDateController.text = DateFormat('yyyy-MM-dd').format(endDate);
      }

      emit(AddMemberDateUpdatedState());
    }
  }

  Future<File?> uploadImageFromGalleryModel({
    required ImagePicker picker,
  }) async {
    try {
      XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        image = File(pickedFile.path);
        emit(UploadImageFromGallerySuccessState(image: pickedFile));
        return image;
      } else {
        emit(const UploadImageErrorState(errorMessage: "No image picked"));
        return null;
      }
    } catch (e) {
      emit(UploadImageErrorState(errorMessage: e.toString()));
      return null;
    }
  }

  void updateGender(String selectedGender) {
    gender = selectedGender;
    emit(AddMemberGenderUpdatedState()); // Emit a new state if needed
  }
}
