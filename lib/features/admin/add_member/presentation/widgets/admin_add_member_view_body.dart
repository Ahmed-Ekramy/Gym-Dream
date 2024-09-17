import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/admin_add_member_form.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/create_user_and_enter_data_widget.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';

class AdminAddMemberViewBody extends StatelessWidget {
  const AdminAddMemberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackIcon(),
            SizedBox(height: 8.h),
            const CreateUserAndEnterDataWidget(),
            SizedBox(height: 8.h),
            const AdminAddMemberViewBodyForm(),
          ],
        ),
      ),
    );
  }
}
