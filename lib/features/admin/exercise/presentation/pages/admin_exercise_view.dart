import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/features/admin/exercise/presentation/manager/cubit/exercise_cubit.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/admin_exercise_view_body.dart';

class AdminExerciseView extends StatelessWidget {
  const AdminExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExerciseCubit(),
      child: Scaffold(
        body: AdminExerciseViewBody(),
      ),
    );
  }
}
