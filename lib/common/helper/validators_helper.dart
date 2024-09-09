import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class MyValidatorsHelper {
  static String? displayNameValidator(
      BuildContext context, String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'Display name cannot be empty';
    }
    if (displayName.length < 3 || displayName.length > 20) {
      return 'Display name must be between 3 and 20 characters';
    }
    return null;
  }

  static String? displayProductNameValidator(
      BuildContext context, String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'Display Product name cannot be empty';
    }
    if (displayName.length < 3 || displayName.length > 20) {
      return 'Display Product name must be between 3 and 20 characters';
    }
    return null;
  }

  static String? displayProductPriceValidator(
      BuildContext context, String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'Display Product Price cannot be empty';
    }
    if (displayName.isEmpty || displayName.length > 5) {
      return 'Display Product price must be between 1 and 5 characters';
    }
    return null;
  }

  static String? displayProductDescriptionValidator(
      BuildContext context, String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'Display Product Description cannot be empty';
    }
    return null;
  }

  static String? displayProductTagsValidator(
      BuildContext context, String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'Display Product Tags cannot be empty';
    }
    if (displayName.length < 5) {
      return 'Display Product Tags must be at least 5 characters long';
    }
    return null;
  }

  static String? urlValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a URL';
    }
    final RegExp urlPattern = RegExp(
      r'^(https?|ftp)://[^\s/$.?#].[^\s]*$',
      caseSensitive: false,
    );
    if (!urlPattern.hasMatch(value)) {
      return 'Please enter a valid URL';
    }
    return null;
  }

  static String? addExercisesValidator(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter the right number';
    }
    if (value.length > 2 || value == '0' || value == '00') {
      return 'Enter the right number';
    }
    return null;
  }

  static String? displayProductSellerValidator(
      BuildContext context, String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'Display Product Seller cannot be empty';
    }
    if (displayName.length < 3 || displayName.length > 20) {
      return 'Display Product Seller must be between 3 and 20 characters';
    }
    return null;
  }

  static String? emailValidator(BuildContext context, String? value) {
    if (value!.isEmpty) {
      return 'Please enter an email';
    }
    if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
        .hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? passwordValidator(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return S.of(context).pleaseEnterYourPassword;
    }
    if (value.length < 8) {
      return S.of(context).passwordMustBeAtLeast8CharactersLong;
    }
    return null;
  }

  static String? loginPasswordValidator(BuildContext context, String? value) {
    if (value!.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  static String? cityValidator(BuildContext context, String? value) {
    if (value!.isEmpty) {
      return 'Please enter a City name';
    }
    if (value.length < 3) {
      return 'City must be at least 3 characters long';
    }
    return null;
  }

  static String? phoneValidator(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return S.of(context).pleaseEnterYourPhoneNumber;
    }
    if (!(value.startsWith('010') ||
        value.startsWith('011') ||
        value.startsWith('012') ||
        value.startsWith('015'))) {
      return S.of(context).phoneNumberMustStartWith01;
    }
    if (value.length != 11) {
      return S.of(context).phoneNumberMustBe11DigitsLong;
    }
    return null;
  }

  static String? repeatPasswordValidator(BuildContext context,
      {String? value, String? password}) {
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }
}
