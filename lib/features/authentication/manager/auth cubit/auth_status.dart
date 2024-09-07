import 'package:flutter/foundation.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoggedIn extends AuthState {
  final bool isAdmin;

  AuthLoggedIn({required this.isAdmin});
}

class AuthLoggedOut extends AuthState {}
