import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/user/auth/manager/password_visibility_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

enum InputType {
  phoneNumber,
  password,
  name,
  createPassword,
  confirmPassword,
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.isLast,
    required this.title,
    required this.inputType,
    this.controller,
    this.readOnly = false,
    this.onChanged,
    this.onTap,
    this.passwordToMatch,
  });

  final String hint;
  final String title;
  final bool isLast;
  final bool readOnly;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final InputType inputType;
  final void Function()? onTap;
  final String? passwordToMatch;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.black600S16,
        ),
        SizedBox(height: 13.h),
        BlocBuilder<PasswordVisibilityCubit, bool>(
          builder: (context, isPasswordVisible) {
            return TextFormField(
              onTap: onTap,
              cursorColor: AppColor.primary,
              readOnly: readOnly,
              controller: controller,
              obscuringCharacter: "*",
              style: AppTextStyle.black500S14,
              obscureText: _isObscured(inputType, isPasswordVisible),
              keyboardType: _getKeyboardType(),
              inputFormatters: inputType == InputType.phoneNumber
                  ? [
                      LengthLimitingTextInputFormatter(11),
                      FilteringTextInputFormatter.digitsOnly,
                    ]
                  : null,
              decoration: InputDecoration(
                prefixIconConstraints: BoxConstraints(
                  minWidth: 25.h,
                  minHeight: 25.h,
                ),
                contentPadding: EdgeInsetsDirectional.only(
                  top: 16.h,
                  bottom: 16.h,
                  start: 18.w,
                ),
                hintText: hint,
                hintStyle: AppTextStyle.gray500S14,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColor.primary),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: AppColor.grey,
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: AppColor.primary,
                    width: 2.0,
                  ),
                ),
                suffixIcon: (inputType == InputType.password ||
                        inputType == InputType.createPassword ||
                        inputType == InputType.confirmPassword)
                    ? Padding(
                        padding: EdgeInsetsDirectional.only(end: 12.w),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            height: 20.h,
                            color: isPasswordVisible
                                ? AppColor.grey
                                : AppColor.primary,
                            isPasswordVisible
                                ? AppAsset.eyeClosed
                                : AppAsset.eyeOpen,
                          ),
                          onPressed: () {
                            context
                                .read<PasswordVisibilityCubit>()
                                .toggleVisibility();
                          },
                        ),
                      )
                    : null,
              ),
              validator: (value) {
                if (inputType == InputType.phoneNumber) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).pleaseEnterYourPhoneNumber;
                  }
                  if (!value.startsWith('01')) {
                    return S.of(context).phoneNumberMustStartWith01;
                  }
                  if (value.length != 11) {
                    return S.of(context).phoneNumberMustBe11DigitsLong;
                  }
                } else if (inputType == InputType.createPassword) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).pleaseEnterYourPassword;
                  }
                  if (!_isStrongPassword(value)) {
                    return S.of(context).useDifferentTypesOfCharacters;
                  }
                } else if (inputType == InputType.confirmPassword) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).pleaseEnterYourPassword;
                  }
                  if (value != passwordToMatch) {
                    return S.of(context).passwordDoesNotMatch;
                  }
                }
                return null;
              },
              onChanged: onChanged,
            );
          },
        ),
      ],
    );
  }

  TextInputType _getKeyboardType() {
    if (inputType == InputType.phoneNumber) {
      return TextInputType.phone;
    } else if (inputType == InputType.password ||
        inputType == InputType.createPassword ||
        inputType == InputType.confirmPassword) {
      return TextInputType.text;
    }
    return TextInputType.text;
  }

  bool _isObscured(InputType inputType, bool isPasswordVisible) {
    return (inputType == InputType.password ||
            inputType == InputType.confirmPassword ||
            inputType == InputType.createPassword) &&
        isPasswordVisible;
  }

  bool _isStrongPassword(String value) {
    final regex =
        RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$');
    return regex.hasMatch(value);
  }
}
