import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dream/core/app_color.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_text_style.dart';

class ExercisesDetails extends StatelessWidget {
  const ExercisesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(AppAsset.arrowCircleRight),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:  EdgeInsets.symmetric( horizontal: 8.0.w),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Chest and abdominal exercises\n',
                    style: AppTextStyle.black600S18),
                TextSpan(
                    text: 'Train with the latest workouts that fit your day.',
                    style: AppTextStyle.gray600S6.copyWith(fontSize: 12.sp)),
              ])),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => Padding(
              padding:  EdgeInsets.symmetric( horizontal: 8.0.w, vertical: 5.h),
              child: Card(
                elevation: 2,
                  child: SizedBox(
                height: 80.h,
                child: Row(children: [
                  Image.asset(AppAsset.imageExerciseDetails),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 150.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Bench press',
                            style: AppTextStyle.black500S14),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: '10-8\t\rCount\n',
                                  style: AppTextStyle.blackOpacity500S10),
                              TextSpan(
                                  text: '10\t\rGroups\n',
                                  style: AppTextStyle.blackOpacity500S10),
                              TextSpan(
                                  text: '300\t\rCalories',
                                  style: AppTextStyle.blackOpacity500S10),
                            ]
                          )
                        ),

                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 70.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      color: AppColor.bluePale,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('View video', style: AppTextStyle.blueBoldS10),
                  )
                ]),
              )),
            ),
            itemCount: 10,
          ),
        ]),
      ),
    );
  }
}
