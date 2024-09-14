import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/cubit/language_cubit.dart';
import '../../../../core/app_asset.dart';
import 'button_save_language.dart';
import 'custom_list_tile.dart';

class LanguageBodyView extends StatelessWidget {
  const LanguageBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.read<LanguageCubit>().selectLanguage('en');
                    },
                    child: CustomListTile(
                      state: state,
                      nameLanguage: 'English',
                      imageLanguage: AppAsset.english,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<LanguageCubit>().selectLanguage('ar');
                    },
                    child: CustomListTile(
                      state: state,
                      nameLanguage: 'العربية',
                      imageLanguage: AppAsset.egyptFlag,
                    ),
                  ),
                ],
              );
            },
          ),
          const Spacer(),
          const ButtonSaveLanguage(),
        ],
      ),
    );
  }
}
