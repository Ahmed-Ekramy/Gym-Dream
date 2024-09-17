import 'package:flutter/material.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/admin_add_member_view_body.dart';

class AdminAddMemberView extends StatelessWidget {
  const AdminAddMemberView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AdminAddMemberViewBody(),
      ),
    );
  }
}
