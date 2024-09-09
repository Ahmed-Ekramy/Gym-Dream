import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en', 'US')) {
    _loadLocale();
  }

  void toggleLocale() async {
    final newLocale = state.languageCode == 'en'
        ? const Locale('ar', 'EG')
        : const Locale('en', 'US');

    emit(newLocale);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', newLocale.languageCode);
    await prefs.setString('countryCode', newLocale.countryCode ?? '');
  }

  void _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode') ?? 'en';
    final countryCode = prefs.getString('countryCode') ?? 'US';
    emit(Locale(languageCode, countryCode));
  }

  void updateLocale(String language) async {
    final newLocale = language == 'English'
        ? const Locale('en', 'US')
        : const Locale('ar', 'EG');

    emit(newLocale);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', newLocale.languageCode);
    await prefs.setString('countryCode', newLocale.countryCode ?? '');
  }
}
