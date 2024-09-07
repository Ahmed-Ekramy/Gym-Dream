import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';

class CustomWarningMassage extends StatelessWidget {
  const CustomWarningMassage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
      child: Card(
        elevation: 5,
        child: Container(
          margin:
              EdgeInsetsDirectional.symmetric(vertical: 5.h, horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("warning", style: AppTextStyle.redBlood500S14),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 90.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffFEDBDC),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Center(
                        child: Text(
                          "Send to all",
                          style: AppTextStyle.redBlood700S18.copyWith(
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                "The gym is full send to our clients tell them",
                style: AppTextStyle.black400S15.copyWith(fontSize: 12.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
