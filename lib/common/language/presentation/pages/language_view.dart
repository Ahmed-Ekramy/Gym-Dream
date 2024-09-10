import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/cubit/language_cubit.dart';
import 'package:gym_dream/common/widgets/custom_app_bar.dart';

import '../widgets/language_body_view.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: const Scaffold(
        appBar: CustomAppBar(title: 'Language'),
        body: LanguageBodyView(),
      ),
    );
  }
}
