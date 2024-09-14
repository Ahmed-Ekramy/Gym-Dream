import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_asset.dart';
import '../../core/app_color.dart';
import '../../core/app_text_style.dart';
import 'custom_button_widget.dart';

Future<bool> showExitConfirmation(String image ,BuildContext context) async {
  return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Center(
              child:
                  Text("You are leaving ?", style: AppTextStyle.black700S18)),
          content: SizedBox(
            height: 250.h,
            child: Column(
              children: [
                Image.asset(image),
                SizedBox(height: 10.h),
                Text("the weight are waiting for you",
                    style: AppTextStyle.black600S16),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        colorBorder: AppColor.primary,
                        color: AppColor.orangeLight,
                        height: 30.h,
                        title: "Stay",
                        textStyle: AppTextStyle.orange600S14,
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      child: CustomButton(
                        color: Colors.red,
                        height: 30.h,
                        title: "Exit",
                        textStyle: AppTextStyle.white700S14,
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ) ??
      false;
}
