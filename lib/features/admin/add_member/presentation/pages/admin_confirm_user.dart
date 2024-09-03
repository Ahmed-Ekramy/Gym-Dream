import 'package:flutter/material.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/admin_confirm_user_body.dart';

class AdminConfirmUser extends StatelessWidget {
  const AdminConfirmUser({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AdminConfirmUserBody(),
    );
  }
}
