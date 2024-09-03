import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/authentication/manager/password%20visibility%20cubit/password_visibility_cubit.dart';
import 'package:gym_dream/features/authentication/widgets/instruction_section.dart';
import 'package:gym_dream/features/authentication/widgets/password_form.dart';
import 'package:gym_dream/features/authentication/widgets/save_button.dart';
import 'package:gym_dream/features/authentication/widgets/subtitle_section.dart';
import 'package:gym_dream/features/authentication/widgets/title_section.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../manager/create password cubit/create_password_cubit.dart';
import '../../widgets/back_icon.dart';

class CreateNewPasswordForTrainee extends StatelessWidget {
  const CreateNewPasswordForTrainee({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PasswordVisibilityCubit()),
        BlocProvider(create: (_) => CreatePasswordCubit()),
      ],
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: MediaQuery.of(context).viewInsets.bottom != 0
            ? null
            : const SaveButton(
                route: Routes.passwordChangedSuccessfullyForTrainee,
              ),
        backgroundColor: AppColor.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                const BackIcon(),
                SizedBox(height: 30.h),
                TitleSection(
                  title: S.of(context).createNewPassword,
                ),
                SizedBox(height: 10.h),
                const SubtitleSection(),
                SizedBox(height: 10.h),
                const PasswordForm(),
                const InstructionsSection(),
                SizedBox(height: 130.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
