import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/widgets/custom_app_bar.dart';
import 'package:gym_dream/features/admin/layout/presentation/manager/cubit/layout_cubit.dart';
import 'package:gym_dream/features/admin/setting/presentation/widgets/admin_setting_view_body.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminSettingView extends StatelessWidget {
  const AdminSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: S.of(context).settings,
            onPressedInBackIcon: () {
              BlocProvider.of<LayoutCubit>(context)
                  .changeBottomNavToHome(context);
            },
          ),
          body: const AdminSettingViewBody(),
        );
      },
    );
  }
}
