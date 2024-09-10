import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_text_style.dart';
import 'custom_row_capacity.dart';

class CustomFlexibleBar extends StatelessWidget {
  const CustomFlexibleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: CircleAvatar(
              radius: 30.r,
              backgroundImage: const AssetImage(
                AppAsset.boy,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${S.of(context).id}: 123456',
                  style: AppTextStyle.black600S16),
              SizedBox(height: 10.h),
              Text(
                maxLines: 2,
                '12 ${S.of(context).sessionCompleted}, 8 ${S.of(context).sessionRemaining}',
                style: AppTextStyle.blackOpacity600S14.copyWith(
                  fontSize: 8.sp,
                ),
              ),
              SizedBox(height: 10.h),
              const CustomRowCapacity(),
            ],
          ),
        ],
      ),
    );
  }
}
