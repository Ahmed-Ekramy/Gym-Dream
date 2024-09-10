import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_text_style.dart';

class CollectionExercise extends StatelessWidget {
  const CollectionExercise({
    required this.imageBackground,
    required this.imageExercise,
    required this.nameExercise,
    required this.numberExercises,
    super.key,
  });

  final String imageBackground;
  final String imageExercise;
  final String nameExercise;
  final int numberExercises;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 110.h,
        color: Colors.transparent,
        child: Stack(
          children: [
            Image.asset(
              height: 110.h,
              imageBackground,
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          nameExercise,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.black500S14,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              AppAsset.weightLifting,
                              width: 45.w,
                              height: 45.h,
                            ),
                            SizedBox(width: 8.0.w),
                            Text(
                              '$numberExercises ${S.of(context).exercises}',
                              style: AppTextStyle.blackOpacity600S14,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.w,
                  child: Image.asset(
                    imageExercise,
                    fit: BoxFit.fill,
                    height: 110.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
