import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageState {
  final String selectedLanguage;
  LanguageState(this.selectedLanguage);
}

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageState('English')) {
    _loadSelectedLanguage();
  }

  void _loadSelectedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final language = prefs.getString('selectedLanguage') ?? 'English';
    emit(LanguageState(language));
  }

  void selectLanguage(String language) {
    emit(LanguageState(language));
  }

  void saveLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedLanguage', state.selectedLanguage);
  }
}
