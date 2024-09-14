import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class GymMemberListViewItem extends StatelessWidget {
  const GymMemberListViewItem({
    super.key,
    required this.image,
    required this.name,
    required this.id,
  });
  final String image;
  final String name;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      color: AppColor.primaryLight,
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(
            width: 8.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTextStyle.black400S16,
              ),
              Text(
                '${S.of(context).id}: $id',
                style: AppTextStyle.brown400S14,
              ),
            ],
          ),
          const Spacer(),
          Material(
            color: Colors.transparent,
            child: PopupMenuButton<int>(
              onSelected: (value) {
                if (value == 1) {
                  // Action 1
                } else if (value == 2) {
                  // Action 2
                }
              },
              icon: const Icon(
                Icons.more_vert,
                color: AppColor.primary,
                size: 30,
              ),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 1,
                  child: SizedBox(
                    width: 200.w,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'View Profile',
                            style: AppTextStyle.black400S16,
                          ),
                          const Spacer(),
                          SvgPicture.asset(AppAsset.eyeOpen)
                        ],
                      ),
                    ),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: SizedBox(
                    width: 200.w,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Edit profile',
                            style: AppTextStyle.black400S16,
                          ),
                          const Spacer(),
                          SvgPicture.asset(AppAsset.editProfile)
                        ],
                      ),
                    ),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: SizedBox(
                    width: 200.w,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Renew subscription',
                            style: AppTextStyle.black400S16,
                          ),
                          const Spacer(),
                          SvgPicture.asset(AppAsset.renewSubscription)
                        ],
                      ),
                    ),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: SizedBox(
                    width: 200.w,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Stop subscription',
                            style: AppTextStyle.black400S16,
                          ),
                          const Spacer(),
                          SvgPicture.asset(AppAsset.stopSubscription)
                        ],
                      ),
                    ),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: SizedBox(
                    width: 200.w,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delete account',
                            style: AppTextStyle.black400S16,
                          ),
                          const Spacer(),
                          SvgPicture.asset(AppAsset.delete)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 4,
              color: AppColor.white,
            ),
          ),
        ],
      ),
    );
  }
}
