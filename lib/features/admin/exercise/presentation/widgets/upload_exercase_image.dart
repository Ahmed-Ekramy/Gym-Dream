import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/exercise/presentation/manager/cubit/exercise_cubit.dart';
import 'package:image_picker/image_picker.dart';

class UploadExerciseImage extends StatelessWidget {
  const UploadExerciseImage({
    super.key,
    required this.picker,
  });
  final ImagePicker picker;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                ExerciseCubit.get(context)
                    .uploadImageFromGalleryModel(picker: picker);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: AppColor.blackOpacity4.withOpacity(0.3),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Upload Photo',
                      style: AppTextStyle.blackOpacity400S14
                          .copyWith(fontSize: 10.sp),
                    ),
                    SizedBox(width: 8.w),
                    SvgPicture.asset(
                      height: 16.h,
                      AppAsset.camera,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: BlocBuilder<ExerciseCubit, ExerciseState>(
            builder: (context, state) {
              if (state is UploadImageExerciseSuccessState) {
                return Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: AppColor.blackOpacity4.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.file(
                      File(state.image.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              } else {
                return Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: AppColor.blackOpacity4.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: const SizedBox(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
