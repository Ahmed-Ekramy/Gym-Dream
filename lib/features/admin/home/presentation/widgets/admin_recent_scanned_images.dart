import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';

class AdminRecentScannedImages extends StatelessWidget {
  final List<String> imageList;

  const AdminRecentScannedImages({super.key, required this.imageList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recently scanned',
          style: AppTextStyle.blackOpacity400S10,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              width: 125.w,
              height: 35.h,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  for (int i = 0; i < imageList.take(5).length; i++)
                    Positioned(
                      left: i * 30.0,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(imageList[i]),
                        radius: 18.r,
                      ),
                    ),
                ],
              ),
            ),
            if (imageList.length > 5)
              CircleAvatar(
                radius: 18.r,
                backgroundColor: Colors.orange.shade50,
                child: Text(
                  '+${imageList.length - 5}',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
              ),
          ],
        )
      ],
    );
  }
}
