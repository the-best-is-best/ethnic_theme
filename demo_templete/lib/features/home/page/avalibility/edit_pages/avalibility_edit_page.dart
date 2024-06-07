import 'dart:math';

import 'package:demo_templete/app/common/functions/days.dart';
import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class AvailabilityPageEdit extends StatefulWidget {
  final List<int>? days;

  const AvailabilityPageEdit({super.key, this.days});

  @override
  State<AvailabilityPageEdit> createState() => _AvailabilityPageEditState();
}

class _AvailabilityPageEditState extends State<AvailabilityPageEdit> {
  late final _locale = appController.localization!;
  int rand = Random().nextInt(2) + 1;
  bool available = (Random().nextInt(2) + 1) == 1 ? true : false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
              onTap: () {
                setState(() {
                  available = true;
                });
              },
              leading: Transform.scale(
                scale: 1.4,
                child: Radio<bool>.adaptive(
                  groupValue: true,
                  onChanged: (value) {
                    setState(() {
                      available = true;
                    });
                  },
                  value: available,
                ),
              ),
              title: MyText(
                text: _locale.availableAllDays,
                style:
                    getBoldStyle(fontSize: FontSize.s16, color: Colors.black),
              ),
              subtitle: MyText(
                text: _locale.availableAllDaysDescription,
                style: getMediumStyle(
                    fontSize: FontSize.s14, color: const Color(0xff666666)),
              )),
          ListTile(
            onTap: () {
              setState(() {
                available = false;
              });
            },
            leading: Transform.scale(
              scale: 1.4,
              child: Radio<bool>.adaptive(
                  groupValue: false,
                  onChanged: (value) {
                    setState(() {
                      available = false;
                    });
                  },
                  value: available),
            ),
            title: MyText(
              text: _locale.custom,
              style: getBoldStyle(fontSize: FontSize.s16, color: Colors.black),
            ),
            subtitle: MyText(
              text: _locale.customDescription,
              style: getMediumStyle(
                  fontSize: FontSize.s14, color: const Color(0xff666666)),
            ),
          ),
          if (!available) ...{
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: _RenderAvailabilityDaysEdit(
                  daysInt: widget.days,
                ))
          }
        ],
      ),
    );
  }
}

class _RenderAvailabilityDaysEdit extends StatefulWidget {
  final List<int>? daysInt;

  const _RenderAvailabilityDaysEdit({
    super.key,
    required this.daysInt,
  });

  @override
  State<_RenderAvailabilityDaysEdit> createState() =>
      _RenderAvailabilityDaysEditState();
}

class _RenderAvailabilityDaysEditState
    extends State<_RenderAvailabilityDaysEdit> {
  late List<int> daysInt = widget.daysInt ?? [];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: .4.sh, maxWidth: double.infinity),
      child: ListView.separated(
          shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
                //height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      const SizedBox(width: 10),
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox.adaptive(
                            fillColor: !daysInt.contains(index)
                                ? WidgetStateProperty.all(Colors.white)
                                : null,
                            value: daysInt.contains(index),
                            onChanged: (v) {
                              setState(() {
                                if (daysInt.contains(index)) {
                                  daysInt.remove(index);
                                } else {
                                  daysInt.add(index);
                                }
                              });
                            }),
                      ),
                      SizedBox(
                        width: .2.sw,
                        child: MyText(
                          text: days[index],
                          style: getBoldStyle(
                              fontSize: FontSize.s14, color: Colors.black),
                        ),
                      ),
                    ]),
                    if (daysInt.contains(index) == true)
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MyText(
                                    text: "from ",
                                    style: getMediumStyle(
                                        color: const Color(0xff666666))),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => TimePickerDialog(
                                            initialTime: TimeOfDay.now()));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 1,
                                            color: const Color(0xff666666)),
                                        color: Colors.white),
                                    child: MyText(
                                        text: "10:00 PM ",
                                        style: getMediumStyle(
                                            color: Colors.black,
                                            fontSize: FontSize.s16)),
                                  ),
                                ),
                              ],
                            )),
                            const SizedBox(width: 2),
                            Flexible(
                                child: Row(
                              children: [
                                MyText(
                                    text: "to ",
                                    style: getMediumStyle(
                                        color: const Color(0xff666666))),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => TimePickerDialog(
                                            initialTime: TimeOfDay.now()));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 1,
                                            color: const Color(0xff666666)),
                                        color: Colors.white),
                                    child: MyText(
                                        text: "10:00 AM",
                                        style: getMediumStyle(
                                            color: Colors.black,
                                            fontSize: FontSize.s16)),
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemCount: days.length),
    );
  }
}
