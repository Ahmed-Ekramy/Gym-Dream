import 'package:flutter/material.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/admin_trusted_user_view_body.dart';

class TrustedUserView extends StatelessWidget {
  const TrustedUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TrustedUserViewBody(),
    );
  }
}
