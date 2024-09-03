import 'package:flutter/material.dart';

import 'package:gym_dream/features/admin/home/presentation/widgets/admin_header.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_home_body_view.dart';

class AdminHomeView extends StatelessWidget {
  const AdminHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminHeader(),
      body: AdminHomeBodyView(),
    );
  }
}
