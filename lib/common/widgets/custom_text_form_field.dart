import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/user/auth/cubits/password_visibility_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

enum InputType {
  phoneNumber,
  password,
  name,
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
  });

  final String hint;
  final String title;
  final bool isLast;
  final bool readOnly;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final InputType inputType;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.black400S14,
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
              obscureText: inputType == InputType.password && isPasswordVisible,
              keyboardType: _getKeyboardType(),
              inputFormatters: inputType == InputType.phoneNumber
                  ? [
                      LengthLimitingTextInputFormatter(11),
                      FilteringTextInputFormatter.digitsOnly
                    ]
                  : null,
              decoration: InputDecoration(
                prefixIconConstraints: BoxConstraints(
                  minWidth: 25.h,
                  minHeight: 25.h,
                ),
                contentPadding: EdgeInsetsDirectional.only(
                  top: 18.h,
                  bottom: 18.h,
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
                suffixIcon: inputType == InputType.password
                    ? Padding(
                        padding: EdgeInsetsDirectional.only(end: 12.w),
                        child: IconButton(
                          icon: SvgPicture.asset(
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
                } else if (inputType == InputType.password) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).pleaseEnterYourPhoneNumber;
                  }
                  if (value.length < 8) {
                    return S.of(context).passwordMustBeAtLeast8CharactersLong;
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
    } else if (inputType == InputType.password) {
      return TextInputType.text;
    }
    return TextInputType.text;
  }
}
