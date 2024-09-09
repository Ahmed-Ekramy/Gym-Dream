
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState(selectedLanguage: 'English'));

  void selectLanguage(String language) {
    emit(LanguageState(selectedLanguage: language));
  }
}
