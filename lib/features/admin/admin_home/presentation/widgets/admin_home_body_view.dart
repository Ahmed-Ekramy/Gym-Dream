import 'package:flutter/material.dart';
import 'package:gym_dream/core/app_color.dart';

class AdminHomeBodyView extends StatelessWidget {
  const AdminHomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 134,
          decoration: const BoxDecoration(
            color: AppColor.primaryLight,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: const Row(
            children: [],
          ),
        )
      ],
    );
  }
}
