import 'package:flutter/material.dart';

import '../../../../../core/app_color.dart';

class ExercisesDetailsView extends StatelessWidget {
  const ExercisesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('ExercisesDetailsView'),
        centerTitle: true,
        backgroundColor: AppColor.primary,

      ),
      body: const Center(
        child: Text('ExercisesDetailsView'),
      ),
    );
  }
}
