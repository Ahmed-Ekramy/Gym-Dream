import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/cubit/language_cubit.dart';

import '../../../../core/app_color.dart';
import '../../../../core/app_text_style.dart';

class CustomListTile extends StatelessWidget {
  final LanguageState state;
  final String nameLanguage;
  final String imageLanguage;

  const CustomListTile({
    super.key,
    required this.state,
    required this.nameLanguage,
    required this.imageLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageLanguage, width: 25.w),
      title: Text(
        nameLanguage,
        style: AppTextStyle.black400S22,
      ),
      trailing: Radio<String>(
        activeColor: AppColor.primary,
        value: nameLanguage,
        groupValue: state.selectedLanguage,
        onChanged: (String? value) {
          if (value != null) {
            context.read<LanguageCubit>().selectLanguage(value);
          }
        },
      ),
    );
  }
}
