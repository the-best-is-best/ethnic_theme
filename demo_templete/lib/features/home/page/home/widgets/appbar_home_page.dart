import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class RenderHomeAppBar extends StatefulWidget {
  final void Function(int tabSelect)? onTabSelected;
  const RenderHomeAppBar({
    super.key,
    required this.onTabSelected,
  });

  @override
  State<RenderHomeAppBar> createState() => _RenderHomeAppBarState();
}

class _RenderHomeAppBarState extends State<RenderHomeAppBar> {
  late final _locale = appController.localization!;
  int selectTodayOrUpcomingOrder = 1;
  Color get containerFirstColor => const Color(0xff23B8E7).withOpacity(1);
  Color get containerSecondColor => const Color(0xff008DBA).withOpacity(.99);

  Color get containerFirstColorDisabled =>
      const Color(0xffC8D7DC).withOpacity(1);
  Color get containerSecondColorDisabled =>
      const Color(0xff606769).withOpacity(.88);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: .3.sh + .12.sh,
      child: Stack(
        children: [
          Container(
            height: .32.sh,
            width: context.width,
            padding: EdgeInsets.only(top: 50.h, left: 20, right: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
              gradient: LinearGradient(
                colors: [AppColor.primaryColor, Color(0xff235DFF)],
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10.r,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff1F9515),
                            borderRadius: BorderRadius.circular(
                                50.0), // Adjust for desired size
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      MyText(
                        text: "Available",
                        style: getBoldStyle(
                            fontSize: FontSize.s16, color: Colors.white),
                      ),
                    ],
                  ),
                  // Row(children: [
                  //   CircleAvatar(
                  //     radius: 20.r,
                  //     child: SvgPicture.asset('assets/svg/avatar.svg',
                  //         color: Colors.white,
                  //         package: 'tbib_flutter_simple_ui'),
                  //   ),
                  //   const SizedBox(width: 10),
                  //   MyText(
                  //       text: 'Hi, ',
                  //       style: getMediumStyle(fontSize: FontSize.s20)),
                  //   MyText(
                  //     text: "Michelle Raouf",
                  //     style: getMediumStyle(fontSize: FontSize.s20),
                  //   ),
                  //   const Spacer(),
                  //   GestureDetector(
                  //     onTap: () {
                  //       //  const NotificationRoute().push(context);
                  //     },
                  //     child: const FaIcon(
                  //       FontAwesomeIcons.bell,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ]),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: _locale.checkYourOrder,
                            style: getBoldStyle(fontSize: FontSize.s20),
                          ),
                          MyText(
                            text: _locale.tody,
                            style: getBoldStyle(fontSize: FontSize.s32),
                          )
                        ],
                      ),
                      const Spacer(),
                      MyText(
                          text: '0',
                          textAlign: TextAlign.center,
                          style: getBoldStyle(fontSize: FontSize.s32)),
                      const SizedBox(width: 10),
                      Padding(
                        padding: EdgeInsets.only(top: 20.sp),
                        child: MyText(
                          text: _locale.orders,
                          style: getLightStyle(fontSize: FontSize.s14),
                        ),
                      )
                    ],
                  )
                ]),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: SizedBox(
              width: .45.sw,
              height: .16.sh,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: .13.sh,
                      width: .43.sw,
                      child: InkWell(
                        onTap: () {
                          if (selectTodayOrUpcomingOrder != 1) {
                            setState(() {
                              selectTodayOrUpcomingOrder = 1;
                            });
                            widget.onTabSelected!(1);
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          height: .15.sh,
                          width: .4.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: selectTodayOrUpcomingOrder == 1
                                ? LinearGradient(
                                    colors: [
                                      containerFirstColor,
                                      containerSecondColor,
                                    ],
                                  )
                                : LinearGradient(colors: [
                                    containerFirstColorDisabled,
                                    containerSecondColorDisabled
                                  ]),
                          ),
                          child: Align(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: MyText(
                                text: _locale.todaysOrders,
                                textAlign: TextAlign.center,
                                style: getBoldStyle(fontSize: FontSize.s18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: 45.r,
                          height: 45.r,
                          //padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: selectTodayOrUpcomingOrder == 1
                                  ? const Color(0xff23B8E7).withOpacity(.5)
                                  : const Color(0xff858D90).withOpacity(.64),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                              selectTodayOrUpcomingOrder == 1
                                  ? Icons.watch_later
                                  : Icons.watch_later_outlined,
                              color: Colors.white)))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            child: SizedBox(
              width: .45.sw,
              height: .16.sh,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: .13.sh,
                      width: .43.sw,
                      child: InkWell(
                        onTap: () {
                          if (selectTodayOrUpcomingOrder != 2) {
                            setState(() {
                              selectTodayOrUpcomingOrder = 2;
                            });
                            widget.onTabSelected!(2);
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: .15.sh,
                          width: .4.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: selectTodayOrUpcomingOrder == 2
                                ? LinearGradient(
                                    colors: [
                                      containerFirstColor,
                                      containerSecondColor,
                                    ],
                                  )
                                : LinearGradient(
                                    colors: [
                                      containerFirstColorDisabled,
                                      containerSecondColorDisabled
                                    ],
                                  ),
                          ),
                          child: Align(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: MyText(
                                text: _locale.upcomingOrders,
                                textAlign: TextAlign.center,
                                style: getBoldStyle(fontSize: FontSize.s18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: 45.r,
                          height: 45.r,
                          //padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: selectTodayOrUpcomingOrder == 2
                                  ? const Color(0xff23B8E7).withOpacity(.5)
                                  : const Color(0xff858D90).withOpacity(.64),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                              selectTodayOrUpcomingOrder == 1
                                  ? FontAwesomeIcons.file
                                  : FontAwesomeIcons.solidFile,
                              color: Colors.white)))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
