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

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp Number`
  String get whatsAppNumber {
    return Intl.message(
      'WhatsApp Number',
      name: 'whatsAppNumber',
      desc: '',
      args: [],
    );
  }

  /// `Package`
  String get package {
    return Intl.message(
      'Package',
      name: 'package',
      desc: '',
      args: [],
    );
  }

  /// `Platinum`
  String get platinum {
    return Intl.message(
      'Platinum',
      name: 'platinum',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birthDate {
    return Intl.message(
      'Birth Date',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `Start Date`
  String get startDate {
    return Intl.message(
      'Start Date',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `End Date`
  String get endDate {
    return Intl.message(
      'End Date',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `Days left for your package`
  String get daysLeftForYourPackage {
    return Intl.message(
      'Days left for your package',
      name: 'daysLeftForYourPackage',
      desc: '',
      args: [],
    );
  }

  /// `Seconds`
  String get seconds {
    return Intl.message(
      'Seconds',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `Minutes`
  String get minutes {
    return Intl.message(
      'Minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `Hours`
  String get hours {
    return Intl.message(
      'Hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get days {
    return Intl.message(
      'Days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Low capacity`
  String get lowCapacity {
    return Intl.message(
      'Low capacity',
      name: 'lowCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Medium capacity`
  String get mediumCapacity {
    return Intl.message(
      'Medium capacity',
      name: 'mediumCapacity',
      desc: '',
      args: [],
    );
  }

  /// `High capacity`
  String get highCapacity {
    return Intl.message(
      'High capacity',
      name: 'highCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Session completed`
  String get sessionCompleted {
    return Intl.message(
      'Session completed',
      name: 'sessionCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Session remaining`
  String get sessionRemaining {
    return Intl.message(
      'Session remaining',
      name: 'sessionRemaining',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Exercises`
  String get exercises {
    return Intl.message(
      'Exercises',
      name: 'exercises',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `our Branches`
  String get ourBranches {
    return Intl.message(
      'our Branches',
      name: 'ourBranches',
      desc: '',
      args: [],
    );
  }

  /// `all Our Gym Branches`
  String get allOurGymBranches {
    return Intl.message(
      'all Our Gym Branches',
      name: 'allOurGymBranches',
      desc: '',
      args: [],
    );
  }

  /// `Away From You`
  String get awayFromYou {
    return Intl.message(
      'Away From You',
      name: 'awayFromYou',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Hello, We Remind You To Change Your Password.`
  String get helloWeRemindYouToChangeYourPassword {
    return Intl.message(
      'Hello, We Remind You To Change Your Password.',
      name: 'helloWeRemindYouToChangeYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message(
      'Warning',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `The gym is full now, you can go to another address`
  String get theGymIsFullNowYouCanGoToAnotherAddress {
    return Intl.message(
      'The gym is full now, you can go to another address',
      name: 'theGymIsFullNowYouCanGoToAnotherAddress',
      desc: '',
      args: [],
    );
  }

  /// `My Qr Code`
  String get myQrCode {
    return Intl.message(
      'My Qr Code',
      name: 'myQrCode',
      desc: '',
      args: [],
    );
  }

  /// `Last Session`
  String get lastSession {
    return Intl.message(
      'Last Session',
      name: 'lastSession',
      desc: '',
      args: [],
    );
  }

  /// `See More`
  String get seeMore {
    return Intl.message(
      'See More',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `In`
  String get In {
    return Intl.message(
      'In',
      name: 'In',
      desc: '',
      args: [],
    );
  }

  /// `Out`
  String get out {
    return Intl.message(
      'Out',
      name: 'out',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Your gym attendance date`
  String get yourGymAttendanceDate {
    return Intl.message(
      'Your gym attendance date',
      name: 'yourGymAttendanceDate',
      desc: '',
      args: [],
    );
  }

  /// `Chest and Abdominal Exercises`
  String get chestAndAbdominalExercises {
    return Intl.message(
      'Chest and Abdominal Exercises',
      name: 'chestAndAbdominalExercises',
      desc: '',
      args: [],
    );
  }

  /// `Train with the latest workouts that fit your day.`
  String get trainWithTheLatestWorkoutsThatFitYourDay {
    return Intl.message(
      'Train with the latest workouts that fit your day.',
      name: 'trainWithTheLatestWorkoutsThatFitYourDay',
      desc: '',
      args: [],
    );
  }

  /// `Our Collection`
  String get ourCollection {
    return Intl.message(
      'Our Collection',
      name: 'ourCollection',
      desc: '',
      args: [],
    );
  }

  /// `Bench press`
  String get benchPress {
    return Intl.message(
      'Bench press',
      name: 'benchPress',
      desc: '',
      args: [],
    );
  }

  /// `Calories`
  String get calories {
    return Intl.message(
      'Calories',
      name: 'calories',
      desc: '',
      args: [],
    );
  }

  /// `Count`
  String get count {
    return Intl.message(
      'Count',
      name: 'count',
      desc: '',
      args: [],
    );
  }

  /// `Group`
  String get group {
    return Intl.message(
      'Group',
      name: 'group',
      desc: '',
      args: [],
    );
  }

  /// `View Video`
  String get viewVideo {
    return Intl.message(
      'View Video',
      name: 'viewVideo',
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
