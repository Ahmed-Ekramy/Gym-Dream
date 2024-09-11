import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_asset.dart';

class SliverCircleAvatar extends StatelessWidget {
  const SliverCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CircleAvatar(
        radius: 100.r,
        backgroundImage: const AssetImage(
          AppAsset.boy,
        ),
      ),
    );
  }
}