import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/widgets/custom_app_bar.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/features/admin/setting/presentation/widgets/edit_profile_view_body.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Edit Profile',
        actions: [
          Column(
            children: [
              SvgPicture.asset(AppAsset.edit),
              const SizedBox(height: 8),
              const Text('Edit Profile'),
            ],
          )
        ],
      ),
      body: const EditProfileViewBody(),
    );
  }
}
