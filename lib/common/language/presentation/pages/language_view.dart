import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/cubit/language_cubit.dart';
import 'package:gym_dream/common/widgets/custom_app_bar.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../widgets/language_body_view.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: S.of(context).language,
        ),
        body: const LanguageBodyView(),
      ),
    );
  }
}
