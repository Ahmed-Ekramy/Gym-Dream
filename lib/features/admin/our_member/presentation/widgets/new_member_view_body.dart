import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/features/admin/our_member/presentation/widgets/gym_member_list_view_item.dart';

class NewMemberViewBody extends StatelessWidget {
  const NewMemberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: const GymMemberListViewItem(
                  image: AppAsset.boy,
                  name: 'Shady Mohamed Steha',
                  id: '101230',
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
