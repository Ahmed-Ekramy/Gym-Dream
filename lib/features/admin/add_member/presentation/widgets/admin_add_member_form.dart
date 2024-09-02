import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UploadUserImage(cubit: cubit, picker: picker),
            SizedBox(height: 16.h),
            Text(
              'Full Name',
              style: AppTextStyle.black500S16,
            ),
            SizedBox(height: 8.h),
            const AppTextFormFiled(
              hintText: 'Enter your full name',
              obscureText: false,
              keyboardType: TextInputType.name,
              maxLine: 1,
            ),
            SizedBox(height: 8.h),
            Text(
              'ID',
              style: AppTextStyle.black500S16,
            ),
            SizedBox(height: 8.h),
            const AppTextFormFiled(
              hintText: 'Enter iD here',
              obscureText: false,
              keyboardType: TextInputType.name,
              maxLine: 1,
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
                    // Navigator.of(context).pushNamed('/admin/packages');
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
            const AppTextFormFiled(
              hintText: 'WhatsApp Number Here',
              obscureText: false,
              keyboardType: TextInputType.name,
              maxLine: 1,
            ),
            SizedBox(height: 8.h),
            Text(
              'Birth Date',
              style: AppTextStyle.black500S16,
            ),
            SizedBox(height: 8.h),
            AppTextFormFiled(
              hintText: 'Birth Date Here',
              obscureText: false,
              keyboardType: TextInputType.name,
              suffixIcon: IconButton(
                onPressed: () {},
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
              hintText: 'Start Date Here',
              obscureText: false,
              keyboardType: TextInputType.name,
              suffixIcon: IconButton(
                onPressed: () {},
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
              hintText: 'End Date Here',
              obscureText: false,
              keyboardType: TextInputType.name,
              suffixIcon: IconButton(
                onPressed: () {},
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
              hintText: 'password',
              obscureText: false,
              keyboardType: TextInputType.name,
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
              hintText: 'confirm password',
              obscureText: false,
              keyboardType: TextInputType.name,
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
              onPressed: () {},
            )
          ],
        );
      },
    );
  }
}
