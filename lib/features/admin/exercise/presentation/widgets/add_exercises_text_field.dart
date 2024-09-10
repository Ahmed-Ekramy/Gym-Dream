import 'package:flutter/material.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class AddExercisesTextField extends StatelessWidget {
  const AddExercisesTextField({
    super.key,
    required this.hint,
    required this.readOnly,
    this.onTap,
    required this.textInputType,
    this.validator,
    this.maxLength,
  });
  final String hint;
  final bool readOnly;
  final void Function()? onTap;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final int? maxLength;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      maxLines: 1,
      validator: validator,
      onTap: onTap,
      keyboardType: textInputType,
      readOnly: readOnly,
      cursorColor: AppColor.primary,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        hintText: hint,
        hintStyle: AppTextStyle.blackOpacity400S14,
        counterText: '',
      ),
    );
  }
}
