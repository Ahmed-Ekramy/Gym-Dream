import 'package:flutter/material.dart';
import 'package:gym_dream/common/widgets/custom_app_bar.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/search/presentation/widgets/admin_search_view_body.dart';

class AdminSearchView extends StatelessWidget {
  const AdminSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Search',
        actions: [
          Text(
            'Clear',
            style: AppTextStyle.blackOpacity600S14,
          )
        ],
      ),
      body: const AdminSearchViewBody(),
    );
  }
}
