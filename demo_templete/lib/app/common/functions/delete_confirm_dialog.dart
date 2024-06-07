import 'dart:ui';

import 'package:demo_templete/app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

void showDeleteConfirmDialog(
    {required BuildContext context,
    String? title,
    Widget? content,
    String? subContent,
    required Function onConfirm}) {
  showAdaptiveDialog(
      context: context,
      barrierColor: Colors.white.withOpacity(.7),
      builder: (_) => BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AlertDialog(
                backgroundColor: Colors.white,
                content: content ??
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const $AssetsImagesGen()
                            .deleteIcon
                            .image(height: 270.h),
                        Text(
                          title ??
                              'Are you sure that you want to delete this slot?',
                          style: getMediumStyle(color: const Color(0xff59606E)),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          subContent ?? 'Delete Slot',
                          style: getMediumStyle(color: Colors.red),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  minimumSize: Size(60.w, 40.h),
                                ),
                                onPressed: () => Navigator.pop(context),
                                child: const Text('No')),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: Size(60.w, 40.h),
                                ),
                                onPressed: () {
                                  onConfirm();
                                  Navigator.pop(context);
                                },
                                child: const Text('Yes')),
                          ],
                        ),
                      ],
                    )),
          ));
}
