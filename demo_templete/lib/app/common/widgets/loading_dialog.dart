import 'package:demo_templete/app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

void loadingDialog(BuildContext context) {
  showAdaptiveDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.5),
    barrierLabel: 'Loading',
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(50),
      // ),
      content: const $AssetsAnimationGen().loading.lottie(
            width: 150,
            height: 150,
          ),
    ),
  );
}
