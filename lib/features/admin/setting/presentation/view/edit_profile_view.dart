import 'package:flutter/material.dart';
import 'package:gym_dream/common/widgets/custom_app_bar.dart';
import 'package:gym_dream/features/admin/setting/presentation/widgets/edit_profile_view_body.dart';
import 'package:gym_dream/generated/l10n.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).editProfile,
      ),
      body: const EditProfileViewBody(),
    );
  }
}
