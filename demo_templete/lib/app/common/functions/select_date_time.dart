import 'dart:developer';

import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

Future<dynamic> selectDateTime(BuildContext context, String title) {
  return showAdaptiveDialog(
    context: context,
    barrierColor: Colors.white.withOpacity(.7),
    builder: (_) {
      DateTime dateSelected = DateTime.now();
      return Builder(builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: StatefulBuilder(builder: (context, setState) {
            return Container(
              color: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    child: MyText(
                      text: title,
                      style: getBoldStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    color: Colors.transparent,
                    width: context.width,
                    child: CalendarDatePicker(
                        onDateChanged: (date) {
                          dateSelected = dateSelected.copyWith(
                              year: date.year,
                              month: date.month,
                              day: date.day);
                        },
                        firstDate: DateTime.now(),
                        initialDate: DateTime.now(),
                        lastDate: DateTime(DateTime.now().year + 5)),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Align(
                        child: MyText(
                          text: "Time:  ",
                          style: getBoldStyle(
                              // fontSize: FontSize.s16,
                              color: AppColor.secondColor),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () async {
                          TimeOfDay time = TimeOfDay(
                              hour: dateSelected.hour,
                              minute: dateSelected.minute);
                          var timeSelected =
                              await selectTimeParent(context, time);
                          if (timeSelected != null) {
                            dateSelected = dateSelected.copyWith(
                                hour: timeSelected.hour,
                                minute: timeSelected.minute);
                            setState(() {});
                          }
                        },
                        child: SizedBox(
                          width: 200.w,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.white,
                                  width: 100.w,
                                  height: 30,
                                  child: Align(
                                    child: Text(
                                      DateFormat("hh:mm").format(dateSelected),
                                      style: getBoldStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Builder(builder: (context) {
                                TimeOfDay time = TimeOfDay(
                                    hour: dateSelected.hour,
                                    minute: dateSelected.minute);
                                bool isAM = time.period.name == "am";
                                return Expanded(
                                  child: Container(
                                    color: Colors.white,
                                    height: 30,
                                    constraints: BoxConstraints(
                                      maxWidth: 200.w,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              if (!isAM) {
                                                setState(() {
                                                  dateSelected = DateTime(
                                                      dateSelected.year,
                                                      dateSelected.month,
                                                      dateSelected.day,
                                                      dateSelected.hour - 12,
                                                      dateSelected.minute);
                                                });
                                              }
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: isAM
                                                        ? AppColor.secondColor
                                                            .withOpacity(.7)
                                                        : Colors.transparent),
                                                child: Align(
                                                    child: Text(
                                                  "AM",
                                                  style: getBoldStyle(
                                                      color: Colors.black),
                                                ))),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              if (isAM) {
                                                setState(() {
                                                  dateSelected = DateTime(
                                                      dateSelected.year,
                                                      dateSelected.month,
                                                      dateSelected.day,
                                                      dateSelected.hour + 12,
                                                      dateSelected.minute);
                                                });
                                              }
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: !isAM
                                                        ? AppColor.secondColor
                                                            .withOpacity(.7)
                                                        : Colors.transparent),
                                                child: Align(
                                                  child: Text(
                                                    "PM",
                                                    style: getBoldStyle(
                                                        color: Colors.black),
                                                  ),
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: Text(
                            "Cancel",
                            style: getBoldStyle(color: Colors.red),
                          )),
                      TextButton(
                          onPressed: () {
                            context.pop();
                            log("Date Selected $dateSelected");
                          },
                          child: Text(
                            "OK",
                            style: getBoldStyle(color: Colors.black),
                          )),
                    ],
                  )
                ],
              ),
            );
          }),
        );
      });
    },
  );
}

Future<dynamic> selectTimeParent(BuildContext context, TimeOfDay time) {
  return showAdaptiveDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => TimePickerDialog(
            initialTime: time,
          ));
}
