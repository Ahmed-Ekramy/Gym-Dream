import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/custom_button_widget.dart';

class ButtonSaveLanguage extends StatelessWidget {
  const ButtonSaveLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomButton(
        height: 35.h,
        width: double.infinity,
        title: 'Save',
        onPressed: () {
          // Implement the save action here
        },
      ),
    );
  }
}
