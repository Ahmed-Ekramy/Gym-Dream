import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double leadingWidth;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.leadingWidth = 35.0,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: AppBar(
        centerTitle: true,
        leadingWidth: leadingWidth.w,
        leading: leading ?? const BackIcon(),
        title: Text(
          title,
          style: AppTextStyle.black400S22,
        ),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
