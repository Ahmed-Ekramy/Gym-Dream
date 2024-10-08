import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';

class UserKind extends StatelessWidget {
  const UserKind({
    super.key,
    required this.onTap,
    required this.color,
    required this.name,
    required this.image,
    this.opacity = 1.0,
    required this.index,
  });

  final void Function() onTap;
  final Color color;
  final String name, image;
  final double opacity;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 60.h),
            child: Opacity(
              opacity: opacity,
              child: Container(
                alignment: Alignment.topCenter,
                height: 115.h,
                width: 145.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: color,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Text(
                    name,
                    style: AppTextStyle.black600S18,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 65.h,
            child: Opacity(
              opacity: opacity,
              child: Hero(
                transitionOnUserGestures: true,
                tag: index,
                child: Container(
                  height: 95.2.h,
                  width: 95.2.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(image),
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: color,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
