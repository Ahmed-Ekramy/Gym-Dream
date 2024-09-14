import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingInitial());
  // Form key for validation
  var formKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  // Controllers
  var fullNameController = TextEditingController();
  var watsAppController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
}
