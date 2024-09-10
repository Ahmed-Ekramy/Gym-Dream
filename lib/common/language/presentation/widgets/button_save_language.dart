import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/cubit/language_cubit.dart';
import 'package:gym_dream/common/cubit/local_language_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../widgets/custom_button_widget.dart';

class ButtonSaveLanguage extends StatelessWidget {
  const ButtonSaveLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomButton(
        height: 35.h,
        width: double.infinity,
        title: S.of(context).save,
        onPressed: () {
          context.read<LanguageCubit>().saveLanguage();
          final selectedLanguage =
              context.read<LanguageCubit>().state.selectedLanguage;
          if (selectedLanguage == 'English') {
            context.read<LocaleCubit>().updateLocale('English');
          } else {
            context.read<LocaleCubit>().updateLocale('Arabic');
          }
        },
      ),
    );
  }
}
