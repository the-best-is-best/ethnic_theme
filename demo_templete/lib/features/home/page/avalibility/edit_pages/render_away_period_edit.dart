import 'dart:developer';

import 'package:demo_templete/app/common/functions/delete_confirm_dialog.dart';
import 'package:demo_templete/app/common/widgets/my_gridiant_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class RenderAwayPeriodEdit extends StatefulWidget {
  final List<int>? days;
  const RenderAwayPeriodEdit({super.key, this.days});

  @override
  State<RenderAwayPeriodEdit> createState() => _RenderAwayPeriodEditState();
}

class _RenderAwayPeriodEditState extends State<RenderAwayPeriodEdit> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FormBuilder(
                child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                  child: MyDatePicker(
                    keyWidget: "from",
                    label: "From",
                    firstDate: DateTime.now(),
                    lastDate: DateTime(DateTime.now().year + 5),
                    inputType: InputType.date,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50.h,
                  child: MyDatePicker(
                    keyWidget: "to",
                    label: "To",
                    firstDate: DateTime.now(),
                    lastDate: DateTime(DateTime.now().year + 5),
                    inputType: InputType.date,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40.h,
                  child: GradientElevatedButton(
                    text: "Add",
                    onPressed: () {},
                  ),
                )
              ],
            )),
          ),
          const SizedBox(height: 10),
          _RenderAwayPeriodDaysEdit(daysInt: widget.days),
        ],
      ),
    );
  }
}

class _RenderAwayPeriodDaysEdit extends StatefulWidget {
  final List<int>? daysInt;
  const _RenderAwayPeriodDaysEdit({super.key, this.daysInt});

  @override
  State<_RenderAwayPeriodDaysEdit> createState() =>
      _RenderAwayPeriodDaysEditState();
}

class _RenderAwayPeriodDaysEditState extends State<_RenderAwayPeriodDaysEdit> {
  late final List<int> _days = widget.daysInt ?? [];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: .3.sh,
          child: ListView.separated(
              shrinkWrap: true,
              //physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                    height: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "from ",
                            style: getMediumStyle(
                                fontSize: FontSize.s16,
                                color: const Color(0xff666666)),
                          ),
                          GestureDetector(
                            onTap: () async {
                              var date = await showAdaptiveDialog(
                                  context: context,
                                  builder: (_) => DatePickerDialog(
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate:
                                            DateTime(DateTime.now().year + 5),
                                      ));
                              log("date $date");
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1, color: const Color(0xff666666)),
                                  color: Colors.white),
                              child: MyText(
                                text: "20/09/2023",
                                style: getMediumStyle(
                                    fontSize: FontSize.s16,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(width: 2),
                          MyText(
                            text: "to ",
                            style: getMediumStyle(
                                fontSize: FontSize.s16,
                                color: const Color(0xff666666)),
                          ),
                          GestureDetector(
                            onTap: () async {
                              var date = await showAdaptiveDialog(
                                  context: context,
                                  builder: (_) => DatePickerDialog(
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate:
                                            DateTime(DateTime.now().year + 5),
                                      ));
                              log("date $date");
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1, color: const Color(0xff666666)),
                                  color: Colors.white),
                              child: MyText(
                                text: "20/09/2023",
                                style: getMediumStyle(
                                    fontSize: FontSize.s16,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              showDeleteConfirmDialog(
                                  context: context,
                                  onConfirm: () {
                                    setState(() {
                                      _days.removeAt(index);
                                    });
                                  });
                            },
                            child: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 5),
                        ]),
                  ),
              separatorBuilder: (_, __) => const SizedBox(height: 0),
              itemCount: _days.length),
        ),
      ],
    );
  }
}
