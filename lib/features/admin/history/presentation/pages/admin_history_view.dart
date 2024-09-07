import 'package:flutter/material.dart';
import 'package:gym_dream/features/admin/history/presentation/widgets/admin_history_view_body.dart';

class AdminHistoryView extends StatelessWidget {
  const AdminHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AdminHistoryViewBody(),
    );
  }
}
