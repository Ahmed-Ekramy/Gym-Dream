import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/helper/validators_helper.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/app_text_form_field.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/add_member/presentation/manager/add_member_cubit.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/upload_user_image.dart';
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
                'Full Name',
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                controller: cubit.fullNameController,
                hintText: 'Enter your full name',
                obscureText: false,
                keyboardType: TextInputType.name,
                maxLine: 1,
                validator: (text) {
                  return MyValidatorsHelper.displayNameValidator(context, text);
                },
              ),
              SizedBox(height: 8.h),
              Text(
                'ID',
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                controller: cubit.iDController,
                hintText: 'Enter iD here',
                obscureText: false,
                keyboardType: TextInputType.phone,
                maxLine: 1,
                validator: (text) {
                  return MyValidatorsHelper.displayNameValidator(context, text);
                },
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    'Gender',
                    style: AppTextStyle.black500S16,
                  ),
                  SizedBox(width: 32.w),
                  Radio<String>(
                    value: 'Male',
                    groupValue: cubit.gender,
                    onChanged: (value) {
                      setState(() {
                        cubit.gender = value;
                      });
                    },
                  ),
                  Text('Male', style: AppTextStyle.black400S14),
                  SizedBox(width: 16.w),
                  Radio<String>(
                    value: 'Female',
                    groupValue: cubit.gender,
                    onChanged: (value) {
                      setState(() {
                        cubit.gender = value;
                      });
                    },
                  ),
                  Text(
                    'Female',
                    style: AppTextStyle.black400S14,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'package :',
                    style: AppTextStyle.black500S16,
                  ),
                  TextButton(
                    onPressed: () {
                      AppNavigation.navigateTo(
                          context: context,
                          routeName: Routes.packageDetailsView);
                    },
                    child: Text(
                      'Details',
                      style: AppTextStyle.blueNavy500S14.copyWith(
                        color: AppColor.blueeee,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Text(
                'WhatsApp Number',
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                hintText: 'WhatsApp Number Here',
                obscureText: false,
                maxLine: 1,
                keyboardType: TextInputType.phone,
                validator: (text) {
                  return MyValidatorsHelper.displayNameValidator(context, text);
                },
              ),
              SizedBox(height: 8.h),
              Text(
                'Birth Date',
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                validator: (text) {
                  return null;

                  // return MyValidatorsHelper.dateValidator(text);
                },
                controller: cubit.birthDateController,
                hintText: cubit.birthDateController.text.isNotEmpty
                    ? cubit.birthDateController.text
                    : 'Birth Date Here',
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
                'Start Date',
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                validator: (text) {
                  return null;

                  // return MyValidatorsHelper.dateValidator(text);
                },
                controller: cubit.startDateController,
                hintText: cubit.startDateController.text.isEmpty
                    ? 'Start Date Here'
                    : cubit.startDateController.text,
                obscureText: false,
                keyboardType: TextInputType.name,
                suffixIcon: IconButton(
                  onPressed: () {
                    cubit.selectDate(context, date: cubit.startDateController);
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
                'End Date',
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                validator: (text) {
                  return null;

                  // return MyValidatorsHelper.dateValidator(text);
                },
                controller: cubit.startDateController,
                hintText: cubit.endDateController.text.isEmpty
                    ? 'End Date Here'
                    : cubit.endDateController.text,
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
                'password',
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                controller: cubit.passWordController,
                hintText: 'password',
                obscureText: false,
                keyboardType: TextInputType.phone,
                validator: (text) {
                  return MyValidatorsHelper.displayNameValidator(context, text);
                },
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppAsset.eyeClosed,
                    height: 20.h,
                    color: AppColor.grey,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'confirm password',
                style: AppTextStyle.black500S16,
              ),
              SizedBox(height: 8.h),
              AppTextFormFiled(
                controller: cubit.confirmPassWordController,
                hintText: 'confirm password',
                obscureText: false,
                keyboardType: TextInputType.phone,
                validator: (text) {
                  return MyValidatorsHelper.displayNameValidator(context, text);
                },
                maxLine: 1,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppAsset.eyeClosed,
                    height: 20.h,
                    color: AppColor.grey,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              CustomButton(
                height: 30.h,
                width: double.infinity,
                title: 'Done',
                onPressed: () {
                  if (cubit.formKey.currentState!.validate() == true) {
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
