import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/add_member/presentation/manager/add_member_cubit.dart';
import 'package:image_picker/image_picker.dart';

class UploadUserImage extends StatelessWidget {
  const UploadUserImage({
    super.key,
    required this.cubit,
    required this.picker,
  });

  final AddMemberCubit cubit;
  final ImagePicker picker;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photo',
              style: AppTextStyle.black500S16,
            ),
            SizedBox(height: 8.h),
            GestureDetector(
              onTap: () {
                cubit.uploadImageFromGalleryModel(
                  picker: picker,
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
                      style: AppTextStyle.blackOpacity400S14,
                    ),
                    SizedBox(width: 8.w),
                    SvgPicture.asset(
                      AppAsset.camera,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Container(
            height: 100.h,
            decoration: BoxDecoration(
              color: AppColor.blackOpacity4.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: cubit.image == null
                ? const SizedBox()
                : ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.file(
                      File(cubit.image!.path),
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
