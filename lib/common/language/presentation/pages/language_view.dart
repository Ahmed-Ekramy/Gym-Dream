import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/cubit/language_cubit.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';

import '../../../../core/app_color.dart';
import '../widgets/language_body_view.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.orangeLight,
          leadingWidth: 40.w,
          leading: const Padding(
            padding: EdgeInsets.only(left: 8),
            child: BackIcon(),
          ),
          centerTitle: true,
          title: Text(
            'Language',
            style: AppTextStyle.black600S18,
          ),
        ),
        body: const LanguageBodyView(),
      ),
    );
  }
}
