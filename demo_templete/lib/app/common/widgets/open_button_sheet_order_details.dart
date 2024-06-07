import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

Future<dynamic> openOrderDetails(BuildContext context, bool isCancelled) {
  final locale = appController.localization!;
  return showModalBottomSheet(
      context: context,
      elevation: 2,
      showDragHandle: true,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (context) => Container(
            height: .8.sh,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MyText(
                    text: locale.orderDetails,
                    style: getBoldStyle(
                        fontSize: FontSize.s20, color: AppColor.thirdColor),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(Icons.bookmark,
                          size: 30, color: AppColor.thirdColor),
                      const SizedBox(width: 10),
                      MyText(
                        text: "Meeting with customer Meeting",
                        style: getBoldStyle(
                            fontSize: FontSize.s14, color: AppColor.thirdColor),
                      ),
                      const Spacer(),
                      if (isCancelled) ...{
                        Row(
                          children: [
                            Container(
                              width: 20.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xffAD0C0C),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                            ),
                            const SizedBox(width: 10),
                            MyText(
                              text: "Cancelled",
                              style: getBoldStyle(
                                  fontSize: FontSize.s14,
                                  color: const Color(0xffAD0C0C)),
                            ),
                            const SizedBox(width: 10),
                          ],
                        )
                      }
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                _Description(
                                    icon: FontAwesomeIcons.hashtag,
                                    text: "Order Number")
                              ],
                            ),
                            _ValueDisplay(
                              value: "SYL123456",
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 10),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                _Description(
                                    icon: Icons.account_box_rounded,
                                    text: "Customer Name")
                              ],
                            ),
                            _ValueDisplay(
                              value: "Michelle Raouf",
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 10),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                _Description(
                                    icon: FontAwesomeIcons.solidAddressCard,
                                    text: "Client")
                              ],
                            ),
                            _ValueDisplay(
                              value: "Michelle",
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 10),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                _Description(
                                    icon: FontAwesomeIcons.solidClock,
                                    text: "Duration")
                              ],
                            ),
                            _ValueDisplay(
                              value: "1h",
                            )
                          ],
                        ),

                        // order type
                        const SizedBox(height: 10),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    width: 15.sp,
                                    height: 20.sp,
                                    color: AppColor.thirdColor),
                                const SizedBox(width: 10),
                                const _Tittle(text: "Order Type"),
                              ],
                            ),
                            const _ValueDisplay(
                              value: "Interpreter",
                            )
                          ],
                        ),

                        // address
                        const SizedBox(height: 10),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 10),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                _Description(
                                    icon: FontAwesomeIcons.mapLocation,
                                    text: "Address")
                              ],
                            ),
                            _ValueDisplay(
                              value: "Cairo, Egypt",
                            )
                          ],
                        ),

                        // DATE
                        const SizedBox(height: 10),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 10),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                _Description(
                                    icon: Icons.calendar_today, text: "Date")
                              ],
                            ),
                            _ValueDisplay(
                              value: "12/12/2021",
                            )
                          ],
                        ),

                        // language

                        const SizedBox(height: 10),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 10),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                _Description(
                                    icon: FontAwesomeIcons.language,
                                    text: "Language")
                              ],
                            ),
                            _ValueDisplay(
                              value: "Arabic",
                            )
                          ],
                        ),

                        //Notes
                        const SizedBox(height: 10),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.message,
                                      color: AppColor.thirdColor,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 10),
                                    MyText(
                                      text: "Notes",
                                      style: getRegularStyle(
                                          fontSize: FontSize.s14,
                                          color: Colors.black),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.sp),
                          child: MyText(
                            text:
                                "This is just a test comment test test test test test. This is just a test comment test test test test test his is just a test comment test test test test test",
                            style: getBoldStyle(
                                fontSize: FontSize.s14, color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
}

class _Description extends StatelessWidget {
  const _Description({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 25.sp + 5, child: _RenderIcon(icon: icon)),
        const SizedBox(width: 10),
        _Tittle(text: text),
      ],
    );
  }
}

class _ValueDisplay extends StatelessWidget {
  const _ValueDisplay({
    super.key,
    required this.value,
  });
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MyText(
        text: value,
        style: getBoldStyle(fontSize: FontSize.s14, color: Colors.black),
      ),
    );
  }
}

class _Tittle extends StatelessWidget {
  const _Tittle({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return MyText(
      text: text,
      style: getRegularStyle(fontSize: FontSize.s14, color: Colors.black),
    );
  }
}

class _RenderIcon extends StatelessWidget {
  const _RenderIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      icon,
      color: AppColor.thirdColor,
      size: 25.sp,
    );
  }
}
