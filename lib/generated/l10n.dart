// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Dream`
  String get dream {
    return Intl.message(
      'Dream',
      name: 'dream',
      desc: '',
      args: [],
    );
  }

  /// `Gym`
  String get gym {
    return Intl.message(
      'Gym',
      name: 'gym',
      desc: '',
      args: [],
    );
  }

  /// `Fitness tailored just for you`
  String get fitnessTailoredJustForYou {
    return Intl.message(
      'Fitness tailored just for you',
      name: 'fitnessTailoredJustForYou',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get login {
    return Intl.message(
      'Log In',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Admin! click here`
  String get adminClickHere {
    return Intl.message(
      'Admin! click here',
      name: 'adminClickHere',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get pleaseEnterYourPhoneNumber {
    return Intl.message(
      'Please enter your phone number',
      name: 'pleaseEnterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must start with "01"`
  String get phoneNumberMustStartWith01 {
    return Intl.message(
      'Phone number must start with "01"',
      name: 'phoneNumberMustStartWith01',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must be 11 digits long`
  String get phoneNumberMustBe11DigitsLong {
    return Intl.message(
      'Phone number must be 11 digits long',
      name: 'phoneNumberMustBe11DigitsLong',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get pleaseEnterYourPassword {
    return Intl.message(
      'Please enter your password',
      name: 'pleaseEnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters long`
  String get passwordMustBeAtLeast8CharactersLong {
    return Intl.message(
      'Password must be at least 8 characters long',
      name: 'passwordMustBeAtLeast8CharactersLong',
      desc: '',
      args: [],
    );
  }

  /// `your phone number`
  String get yourPhoneNumber {
    return Intl.message(
      'your phone number',
      name: 'yourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Choose your member ship type`
  String get chooseYourMemberShipType {
    return Intl.message(
      'Choose your member ship type',
      name: 'chooseYourMemberShipType',
      desc: '',
      args: [],
    );
  }

  /// `Admin`
  String get admin {
    return Intl.message(
      'Admin',
      name: 'admin',
      desc: '',
      args: [],
    );
  }

  /// `Trainee`
  String get trainee {
    return Intl.message(
      'Trainee',
      name: 'trainee',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `User? click here`
  String get userClickHere {
    return Intl.message(
      'User? click here',
      name: 'userClickHere',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP`
  String get enterTheOtp {
    return Intl.message(
      'Enter the OTP',
      name: 'enterTheOtp',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP code sent to your WhatsApp number`
  String get enterTheOtpCodeSentToYourWhatsappNumber {
    return Intl.message(
      'Enter the OTP code sent to your WhatsApp number',
      name: 'enterTheOtpCodeSentToYourWhatsappNumber',
      desc: '',
      args: [],
    );
  }

  /// `The code will be resent after`
  String get theCodeWillBeResentAfter {
    return Intl.message(
      'The code will be resent after',
      name: 'theCodeWillBeResentAfter',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Try again later`
  String get tryAgainLater {
    return Intl.message(
      'Try again later',
      name: 'tryAgainLater',
      desc: '',
      args: [],
    );
  }

  /// `Send new OTP`
  String get sendNewOtp {
    return Intl.message(
      'Send new OTP',
      name: 'sendNewOtp',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Create new password`
  String get createNewPassword {
    return Intl.message(
      'Create new password',
      name: 'createNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password`
  String get enterYourNewPassword {
    return Intl.message(
      'Enter your new password',
      name: 'enterYourNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Instructions`
  String get instructions {
    return Intl.message(
      'Instructions',
      name: 'instructions',
      desc: '',
      args: [],
    );
  }

  /// `Use different types of characters`
  String get useDifferentTypesOfCharacters {
    return Intl.message(
      'Use different types of characters',
      name: 'useDifferentTypesOfCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Uppercase letters(A-Z)`
  String get uppercaseLettersAZ {
    return Intl.message(
      'Uppercase letters(A-Z)',
      name: 'uppercaseLettersAZ',
      desc: '',
      args: [],
    );
  }

  /// `Lowercase letters (a-z)`
  String get owerCaseLettersAz {
    return Intl.message(
      'Lowercase letters (a-z)',
      name: 'owerCaseLettersAz',
      desc: '',
      args: [],
    );
  }

  /// `Numbers (0-9)`
  String get numbers09 {
    return Intl.message(
      'Numbers (0-9)',
      name: 'numbers09',
      desc: '',
      args: [],
    );
  }

  /// `Special symbols such as (!, @, #, $, %, ^, &, *)`
  String get specialSymbolsSuchAs {
    return Intl.message(
      'Special symbols such as (!, @, #, \$, %, ^, &, *)',
      name: 'specialSymbolsSuchAs',
      desc: '',
      args: [],
    );
  }

  /// `Password does not match`
  String get passwordDoesNotMatch {
    return Intl.message(
      'Password does not match',
      name: 'passwordDoesNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully 🎉`
  String get passwordChangedSuccessfullyView {
    return Intl.message(
      'Password changed successfully 🎉',
      name: 'passwordChangedSuccessfullyView',
      desc: '',
      args: [],
    );
  }

  /// `Go to Home`
  String get goToHome {
    return Intl.message(
      'Go to Home',
      name: 'goToHome',
      desc: '',
      args: [],
    );
  }

  /// `Password changed `
  String get passwordChanged {
    return Intl.message(
      'Password changed ',
      name: 'passwordChanged',
      desc: '',
      args: [],
    );
  }

  /// `successfully 🎉`
  String get successfully {
    return Intl.message(
      'successfully 🎉',
      name: 'successfully',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
