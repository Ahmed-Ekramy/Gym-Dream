import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/app_asset.dart';
import '../manager/language_cubit.dart';
import 'button_save_language.dart';
import 'custom_list_tile.dart';

class LanguageBodyView extends StatelessWidget {
  const LanguageBodyView({
    super.key,
  });

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
                  CustomListTile(
                    state: state,
                    nameLanguage: 'English',
                    imageLanguage: AppAsset.english,
                  ),
                  CustomListTile(
                    state: state,
                    nameLanguage: 'Arabic',
                    imageLanguage: AppAsset.egyptFlag,
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