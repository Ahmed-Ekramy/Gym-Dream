import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/validators_helper.dart';
import 'package:gym_dream/common/widgets/app_text_form_field.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/add_member/presentation/manager/add_member_cubit.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/package_details_view_body.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/upload_user_image.dart';
import 'package:gym_dream/generated/l10n.dart';
import 'package:image_picker/image_picker.dart';

class AdminAddMemberViewBodyForm extends StatefulWidget {
  const AdminAddMemberViewBodyForm({super.key});

  @override
  State<AdminAddMemberViewBodyForm> createState() =>
      _AdminAddMemberViewBodyFormState();
}

class _AdminAddMemberViewBodyFormState
    extends State<AdminAddMemberViewBodyForm> {
  final ImagePicker picker = ImagePicker();
  String? selectedPackageName;
  bool isPassVisible = false;
  bool isConfirmPassVisible = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddMemberCubit, AddMemberState>(
      listener: (context, state) {
        if (state is UploadImageErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
              backgroundColor: AppColor.red,
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      },
      builder: (context, state) {
        var cubit = BlocProvider.of<AddMemberCubit>(context);
        return Form(
          key: cubit.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UploadUserImage(cubit: cubit, picker: picker),
              SizedBox(height: 16.h),
              Text(
                S.of(context).fullName,
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
                ],
                controller: cubit.fullNameController,
                hintText: S.of(context).enterYourFullName,
                obscureText: false,
                keyboardType: TextInputType.name,
                maxLine: 1,
                validator: (text) {
                  return MyValidatorsHelper.displayNameValidator(context, text);
                },
              ),
              SizedBox(height: 8.h),
              Text(
                S.of(context).id,
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                controller: cubit.iDController,
                hintText: S.of(context).enterYourIDHere,
                obscureText: false,
                keyboardType: TextInputType.phone,
                maxLine: 1,
                validator: (text) {
                  return MyValidatorsHelper.idValidator(context, text);
                },
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    S.of(context).gender,
                    style: AppTextStyle.black500S16,
                  ),
                  SizedBox(width: 32.w),
                  Radio<String>(
                    activeColor: AppColor.primary,
                    value: S.of(context).male,
                    groupValue: cubit.gender,
                    onChanged: (value) {
                      setState(() {
                        cubit.gender = value;
                      });
                    },
                  ),
                  Text(S.of(context).male, style: AppTextStyle.black400S14),
                  SizedBox(width: 16.w),
                  Radio<String>(
                    activeColor: AppColor.primary,
                    value: S.of(context).female,
                    groupValue: cubit.gender,
                    onChanged: (value) {
                      setState(() {
                        cubit.gender = value;
                      });
                    },
                  ),
                  Text(
                    S.of(context).female,
                    style: AppTextStyle.black400S14,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${S.of(context).package}:',
                    style: AppTextStyle.black500S16,
                  ),
                  Text(
                    selectedPackageName ?? '',
                    style: AppTextStyle.black400S14,
                  ),
                  TextButton(
                    onPressed: () async {
                      // Navigate to package selection and await result
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PackageDetailsViewBody(),
                        ),
                      );

                      if (result != null) {
                        setState(() {
                          selectedPackageName =
                              result as String; // Update selected package
                        });
                      }
                    },
                    child: Text(
                      S.of(context).details,
                      style: AppTextStyle.blueNavy500S14.copyWith(
                        color: AppColor.blueeee,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Text(
                S.of(context).whatsAppNumber,
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                controller: cubit.watsAppController,
                hintText: S.of(context).whatsAppNumber,
                obscureText: false,
                maxLine: 1,
                keyboardType: TextInputType.phone,
                validator: (text) {
                  return MyValidatorsHelper.phoneValidator(context, text);
                },
              ),
              SizedBox(height: 8.h),
              Text(
                S.of(context).birthDate,
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                validator: (text) {
                  return MyValidatorsHelper.birthDateValidator(context, text);
                },
                controller: cubit.birthDateController,
                readOnly: true,
                hintText: S.of(context).birthDate,
                obscureText: false,
                keyboardType: TextInputType.name,
                suffixIcon: IconButton(
                  onPressed: () {
                    cubit.selectDate(context, date: cubit.birthDateController);
                  },
                  icon: SvgPicture.asset(
                    AppAsset.calendar,
                    height: 15.h,
                    color: AppColor.grey,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                S.of(context).startDate,
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                readOnly: true,
                validator: (text) {
                  return MyValidatorsHelper.startDateValidator(context, text);
                },
                controller: cubit.startDateController,
                hintText: S.of(context).startDate,
                obscureText: false,
                keyboardType: TextInputType.name,
                suffixIcon: IconButton(
                  onPressed: () {
                    cubit.selectDate(context,
                        date: cubit.startDateController, isStartDate: true);
                  },
                  icon: SvgPicture.asset(
                    AppAsset.calendar,
                    height: 15.h,
                    color: AppColor.grey,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                S.of(context).endDate,
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                readOnly: true,
                validator: (text) {
                  return MyValidatorsHelper.endDateValidator(context, text);
                },
                controller: cubit.endDateController,
                hintText: S.of(context).endDate,
                obscureText: false,
                keyboardType: TextInputType.name,
                suffixIcon: IconButton(
                  onPressed: () {
                    cubit.selectDate(context, date: cubit.endDateController);
                  },
                  icon: SvgPicture.asset(
                    AppAsset.calendar,
                    height: 15.h,
                    color: AppColor.grey,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                S.of(context).password,
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                controller: cubit.passWordController,
                hintText: S.of(context).password,
                obscureText: isPassVisible,
                keyboardType: TextInputType.visiblePassword,
                validator: (text) {
                  return MyValidatorsHelper.passwordValidator(context, text);
                },
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPassVisible = !isPassVisible;
                    });
                  },
                  icon: isPassVisible
                      ? SvgPicture.asset(
                          AppAsset.eyeClosed,
                          height: 20.h,
                          color: AppColor.grey,
                        )
                      : SvgPicture.asset(
                          AppAsset.eyeOpen,
                          height: 20.h,
                          color: AppColor.grey,
                        ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                S.of(context).confirmPassword,
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                controller: cubit.confirmPassWordController,
                hintText: S.of(context).confirmPassword,
                obscureText: isConfirmPassVisible,
                keyboardType: TextInputType.visiblePassword,
                validator: (text) {
                  return MyValidatorsHelper.passwordValidator(context, text);
                },
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isConfirmPassVisible = !isConfirmPassVisible;
                    });
                  },
                  icon: isConfirmPassVisible
                      ? SvgPicture.asset(
                          AppAsset.eyeClosed,
                          height: 20.h,
                          color: AppColor.grey,
                        )
                      : SvgPicture.asset(
                          AppAsset.eyeOpen,
                          height: 20.h,
                          color: AppColor.grey,
                        ),
                ),
              ),
              SizedBox(height: 16.h),
              CustomButton(
                height: 30.h,
                width: double.infinity,
                title: S.of(context).done,
                onPressed: () {
                  if (cubit.formKey.currentState!.validate() == true) {
                    // Call the function to add member here
                  } else {
                    cubit.autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              )
            ],
          ),
        );
      },
    );
  }
}
