import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class AppTextFormFiled extends StatelessWidget {
  const AppTextFormFiled({
    super.key,
    this.onChanged,
    this.onFieldSubmitted,
    this.onSaved,
    required this.hintText,
    this.maxLine = 1,
    this.filled,
    this.fillColor,
    this.controller,
    required this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.validator,
    this.decoration,
  });

  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final String hintText;
  final int? maxLine;
  final bool obscureText;
  final bool? filled;
  final TextEditingController? controller;
  final Color? fillColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      maxLines: maxLine ?? 1,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: const TextStyle(fontSize: 16),
      controller: controller,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      validator: validator,
      decoration: decoration ??
          InputDecoration(
            contentPadding: EdgeInsetsDirectional.only(
              top: 16.h,
              bottom: 16.h,
              start: 18.w,
            ),
            errorStyle: AppTextStyle.redBlood500S10,
            suffixIcon: suffixIcon,
            suffixIconColor: const Color.fromARGB(255, 101, 98, 98),
            prefixIcon: prefixIcon,
            filled: filled ?? false,
            fillColor: fillColor ?? Colors.transparent,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColor.grayLightOpacity40,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColor.primary,
              ),
            ),
            errorBorder: buildOutlineInputBorder(
              width: 2,
            ),
            focusedErrorBorder: buildOutlineInputBorder(
              width: 2,
            ),
            hintText: hintText,
            hintStyle: AppTextStyle.gray400S14,
          ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder({required double width}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(
      width: width,
      color: AppColor.redBlood,
    ),
  );
}
