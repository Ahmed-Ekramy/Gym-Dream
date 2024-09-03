import 'package:flutter/material.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/package_details_view_body.dart';

class PackageDetailsView extends StatelessWidget {
  const PackageDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PackageDetailsViewBody(),
    );
  }
}
