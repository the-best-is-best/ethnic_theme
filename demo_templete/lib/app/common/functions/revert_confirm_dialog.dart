import 'dart:ui';

import 'package:demo_templete/app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

Future<bool?> showRevertConfirmDialog(
    {required BuildContext context,
    String? title,
    Widget? content,
    String? subContent,
    required Function onConfirm}) async {
  return showAdaptiveDialog<bool>(
      context: context,
      barrierColor: Colors.white.withOpacity(.7),
      builder: (_) => BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AlertDialog(
                backgroundColor: Colors.white,
                content: content ??
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const $AssetsImagesGen()
                            .deleteIcon
                            .image(height: 270.h),
                        Text(
                          title ??
                              'Are you sure that you want to close this page?',
                          textAlign: TextAlign.center,
                          style: getMediumStyle(
                              color: const Color(0xff59606E),
                              fontSize: FontSize.s20),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          subContent ?? 'You won’t be able to revert this',
                          textAlign: TextAlign.center,
                          style: getBoldStyle(
                              color: const Color(0xffF24822),
                              fontSize: FontSize.s24),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  minimumSize: Size(70.w, 30.h),
                                ),
                                onPressed: () {
                                  onConfirm();
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    'Yes',
                                    style: getBoldStyle(fontSize: FontSize.s14),
                                  ),
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff61A51D),
                                  minimumSize: Size(70.w, 30.h),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: getBoldStyle(fontSize: FontSize.s14),
                                )),
                          ],
                        ),
                      ],
                    )),
          ));
}
