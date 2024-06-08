import 'package:demo_templete/app/common/functions/revert_confirm_dialog.dart';
import 'package:demo_templete/app/gen/assets.gen.dart';
import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class RenderAppBar extends StatefulWidget {
  final String title;
  final bool supportEditMode;
  final Function(bool edit)? onEdit;
  final Function? save;
  final bool inEditMode;
  final bool supportBack;
  final Function? revert;
  final Function? back;

  const RenderAppBar({
    super.key,
    required this.title,
    this.supportEditMode = true,
    this.onEdit,
    this.save,
    this.inEditMode = false,
    this.revert,
    this.supportBack = false,
    this.back,
  });

  @override
  State<RenderAppBar> createState() => _RenderAppBarState();
}

class _RenderAppBarState extends State<RenderAppBar> {
  // bool _inEditMode = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      // height: 300.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColor.primaryColor, Color(0xff235DFF)],
        ),
      ),
      child: Stack(
        children: [
          const $AssetsImagesGen().map.image(height: .24.sh),
          Positioned.fill(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Align(
                  child:
                      const $AssetsImagesGen().ethnicLogo.image(height: 100.h),
                ),
                // const SizedBox(height: 10),
                MyText(
                  text: widget.title,
                  style: getBoldStyle(fontSize: FontSize.s22),
                )
              ])),
          if (widget.supportEditMode) ...{
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: IconButton(
                      onPressed: () {
                        widget.save?.call();
                        widget.onEdit
                            ?.call(widget.inEditMode == true ? false : true);
                      },
                      icon: Icon(
                        widget.inEditMode
                            ? FontAwesomeIcons.check
                            : FontAwesomeIcons.penToSquare,
                        color: Colors.white,
                        size: FontSize.s28,
                      )),
                ),
              ),
            ),
            if (widget.inEditMode && widget.revert != null)
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: IconButton(
                        onPressed: () {
                          showRevertConfirmDialog(
                              context: context, onConfirm: widget.revert!);
                        },
                        icon: Icon(
                          FontAwesomeIcons.xmark,
                          color: Colors.red.shade900,
                          size: FontSize.s28,
                        )),
                  ),
                ),
              )
          },
          if (widget.supportBack && context.canPop()) ...{
            Positioned.fill(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.white,
                        size: FontSize.s28,
                      )),
                ),
              ),
            ),
          } else if (widget.supportBack &&
              widget.back != null &&
              !widget.inEditMode) ...{
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: IconButton(
                      onPressed: () {
                        widget.back!.call();
                      },
                      icon: Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.white,
                        size: FontSize.s28,
                      )),
                ),
              ),
            ),
          }
        ],
      ),
    );
  }
}
