import 'dart:math';

import 'package:demo_templete/app/common/functions/days.dart';
import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class AvailabilityPageView extends StatefulWidget {
  final List<int>? days;
  const AvailabilityPageView({super.key, this.days});

  @override
  State<AvailabilityPageView> createState() => _AvailabilityPageViewState();
}

class _AvailabilityPageViewState extends State<AvailabilityPageView> {
  int ran = Random().nextInt(2) + 1;
  late final _locale = appController.localization!;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (ran == 1) ...{
            MyText(
              text: _locale.availableAllDays,
              style: getBoldStyle(fontSize: FontSize.s16, color: Colors.black),
            ),
            const SizedBox(height: 5),
            MyText(
              text: _locale.availableAllDaysDescription,
              style: getMediumStyle(
                  fontSize: FontSize.s16, color: const Color(0xff666666)),
            ),
          } else ...{
            _RenderAvailabilityDaysView(daysInt: widget.days)
          }
        ],
      ),
    );
  }
}

class _RenderAvailabilityDaysView extends StatelessWidget {
  final List<int>? daysInt;

  const _RenderAvailabilityDaysView({
    required this.daysInt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: .55.sh, maxWidth: double.infinity),
      child: ListView.separated(
          shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(children: [
                  const SizedBox(width: 10),
                  SizedBox(
                    width: .3.sw,
                    child: MyText(
                      text: days[daysInt![index]],
                      style: getBoldStyle(
                          fontSize: FontSize.s16, color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "from ",
                        style: getMediumStyle(
                            fontSize: FontSize.s16,
                            color: const Color(0xff666666)),
                      ),
                      TextSpan(
                        text: "10:00 PM ",
                        style: getMediumStyle(
                            fontSize: FontSize.s16, color: Colors.black),
                      ),
                      TextSpan(
                        text: "to ",
                        style: getMediumStyle(
                            fontSize: FontSize.s16,
                            color: const Color(0xff666666)),
                      ),
                      TextSpan(
                        text: "10:00 AM",
                        style: getMediumStyle(
                            fontSize: FontSize.s16, color: Colors.black),
                      ),
                    ])),
                  )
                ]),
              ),
          separatorBuilder: (_, __) => const SizedBox(height: 30),
          itemCount: daysInt?.length ?? 0),
    );
  }
}
