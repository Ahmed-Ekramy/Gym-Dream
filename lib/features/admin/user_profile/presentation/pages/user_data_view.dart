import 'package:flutter/material.dart';
import 'package:gym_dream/features/admin/user_profile/presentation/widgets/user_data_view_body.dart';

class UserDataView extends StatelessWidget {
  const UserDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserDataViewBody(),
    );
  }
}
