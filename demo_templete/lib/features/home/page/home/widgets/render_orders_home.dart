import 'dart:math';

import 'package:demo_templete/app/common/widgets/open_button_sheet_order_details.dart';
import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class RenderOrders extends StatelessWidget {
  final int? activeTab;

  const RenderOrders({
    super.key,
    this.activeTab = 1,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: Random().nextInt(100) + 10,
      itemBuilder: (context, index) {
        int orderTypeRand = activeTab == 1
            ? Random().nextInt(5) + 1
            : activeTab == 2
                ? Random().nextInt(4) + 1
                : 5;

        bool isCancelled = Random().nextBool();
        return GestureDetector(
          onTap: () {
            openOrderDetails(context, isCancelled);
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.orderBackground,
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(width: 30),
                    FaIcon(
                      orderTypeRand == 1
                          ? FontAwesomeIcons.building
                          : orderTypeRand == 2
                              ? FontAwesomeIcons.phone
                              : orderTypeRand == 3
                                  ? FontAwesomeIcons.users
                                  : orderTypeRand == 4
                                      ? FontAwesomeIcons.video
                                      : FontAwesomeIcons.language,
                      size: 25,
                      color: AppColor.thirdColor,
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: 'SYL2321254',
                        style: getBoldStyle(
                            fontSize: FontSize.s16, color: Colors.black),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              MyText(
                                text: '2:30 AM',
                                style: getBoldStyle(
                                    fontSize: FontSize.s16,
                                    color: const Color(0xff717171)),
                              ),
                              const SizedBox(width: 20),
                              MyText(
                                text: 'Arabic',
                                style: getBoldStyle(
                                    fontSize: FontSize.s16,
                                    color: const Color(0xff717171)),
                              ),
                            ],
                          ),
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
                                )
                              ],
                            ),
                          }
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 30),
    );
  }
}

class RenderOrdersHome extends StatefulWidget {
  final int orderTab;
  const RenderOrdersHome({super.key, required this.orderTab});

  @override
  State<RenderOrdersHome> createState() => _RenderOrdersHomeState();
}

class _RenderOrdersHomeState extends State<RenderOrdersHome> {
  late final _locale = appController.localization!;
  int activeTab = 1;
  Color get activeBackgroundColor => const Color(0xff037AE8).withOpacity(.5);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: widget.orderTab == 1
              ? _locale.todaysOrders
              : _locale.upcomingOrders,
          style: getBoldStyle(
              fontSize: FontSize.s20, color: const Color(0xff444444)),
        ),
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              decoration: BoxDecoration(
                  color: activeTab == 1 ? activeBackgroundColor : null,
                  borderRadius: BorderRadius.circular(15)),
              //   margin: const EdgeInsets.only(left: 10),
              child: Center(
                child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      if (activeTab != 1) {
                        setState(() {
                          activeTab = 1;
                        });
                      }
                    },
                    child: MyText(
                      text: _locale.all,
                      style: getBoldStyle(
                          fontSize: FontSize.s18,
                          color: activeTab == 1
                              ? Colors.white
                              : const Color(0xff343434)),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: activeTab == 2 ? activeBackgroundColor : null,
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.only(left: 10),
              child: InkWell(
                  onTap: () {
                    if (activeTab != 2) {
                      setState(() {
                        activeTab = 2;
                      });
                    }
                  },
                  child: MyText(
                    text: _locale.interpreter,
                    style: getBoldStyle(
                        fontSize: FontSize.s18,
                        color: activeTab == 2
                            ? Colors.white
                            : const Color(0xff343434)),
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: activeTab == 3 ? activeBackgroundColor : null,
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.only(left: 10),
              child: InkWell(
                  onTap: () {
                    if (activeTab != 3) {
                      setState(() {
                        activeTab = 3;
                      });
                    }
                  },
                  child: MyText(
                    text: _locale.translator,
                    style: getBoldStyle(
                        fontSize: FontSize.s18,
                        color: activeTab == 3
                            ? Colors.white
                            : const Color(0xff343434)),
                  )),
            )
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: .33.sh,
          child: RenderOrders(activeTab: activeTab),
        )
      ],
    );
  }
}
