import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class ExercisesCard extends StatelessWidget {
  const ExercisesCard({
    super.key,
    this.deleteButton,
  });

  final Widget? deleteButton;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.white,
      shadowColor: AppColor.black,
      elevation: 4,
      child: SizedBox(
        height: 80.h,
        child: Row(
          children: [
            Image.asset(
              AppAsset.imageExerciseDetails,
              width: 80.w,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: SizedBox(
                width: 150.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      S.of(context).benchPress,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.black500S14,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '10-8\t\r${S.of(context).count}\n',
                            style: AppTextStyle.blackOpacity500S10,
                          ),
                          TextSpan(
                            text: '4\t\r${S.of(context).group}\n',
                            style: AppTextStyle.blackOpacity500S10,
                          ),
                          TextSpan(
                            text: '100\t\r${S.of(context).calories}\n',
                            style: AppTextStyle.blackOpacity500S10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (deleteButton != null) deleteButton!,
                Container(
                  alignment: Alignment.center,
                  width: 85.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                    color: AppColor.babyBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    S.of(context).viewVideo,
                    style: AppTextStyle.darkBlue700S10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
