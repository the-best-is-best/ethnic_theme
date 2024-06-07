import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';
import 'package:tbib_monthly_date_picker/extra/date_picker_config.dart';
import 'package:tbib_monthly_date_picker/widgets/render_dates_line.dart';

class RenderDatePickerTimeLine extends StatefulWidget {
  // final DateTime date;
  final Function(DateTime) onDateChange;
  const RenderDatePickerTimeLine({super.key, required this.onDateChange});

  @override
  State<RenderDatePickerTimeLine> createState() => _DatePickerTimeLineState();
}

class _DatePickerTimeLineState extends State<RenderDatePickerTimeLine> {
  DateTime dateNow = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: .4.sh,
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: DatePickerTimeLine(
          controller: DatePickerController(),
          datePickerConfig: DatePickerConfig(
            dateTextStyle: getBoldStyle(
              fontSize: FontSize.s16,
              color: Colors.white,
            ),
            dayTextStyle: getBoldStyle(
              fontSize: FontSize.s16,
              color: Colors.white,
            ),
            dateSelectedStyle: getBoldStyle(
              fontSize: FontSize.s22,
              color: Colors.white,
            ),
            initialSelectedDate: dateNow,
            datesHasEvent: [
              DateTime.now().add(const Duration(days: -1)),
              DateTime.now().add(const Duration(days: -3)),
            ],
            labelButtonDatePicker: Text(
              "Select Date",
              style: getRegularStyle(),
            ),
            selectionColor: const Color(0xff9C2CF3).withOpacity(.25),
            selectedTextColor: Colors.white,
          ),
          onDateChange: (date) {
            widget.onDateChange(date);
          },
        ),
      ),
    );
  }
}
