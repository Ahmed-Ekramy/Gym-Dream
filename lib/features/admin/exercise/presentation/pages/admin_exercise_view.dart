import 'package:flutter/material.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/admin_exercise_view_body.dart';

class AdminExerciseView extends StatelessWidget {
  const AdminExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AdminExerciseViewBody(),
    );
  }
}
