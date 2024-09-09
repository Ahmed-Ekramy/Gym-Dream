import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/authentication/choosing_view.dart';
import 'package:gym_dream/features/authentication/manager/auth%20cubit/auth_cubit.dart';
import 'package:gym_dream/features/authentication/manager/auth%20cubit/auth_status.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoggedOut) {
          Future.delayed(
            Duration.zero,
            () {
              AppNavigation.navigateAndRemoveUntil(
                context: context,
                newRoute: Routes.choosingView,
              );
            },
          );
        } else if (state is AuthLoggedIn) {
          Future.delayed(
            Duration.zero,
            () {
              if (state.isAdmin) {
                AppNavigation.navigateAndRemoveUntil(
                  context: context,
                  newRoute: Routes.homeAdminLayout,
                );
              } else {
                AppNavigation.navigateAndRemoveUntil(
                  context: context,
                  newRoute: Routes.homeUserLayout,
                );
              }
            },
          );
        }
      },
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthLoggedIn) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          } else if (state is AuthLoggedOut) {
            return const ChoosingView();
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: AppColor.primary,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
