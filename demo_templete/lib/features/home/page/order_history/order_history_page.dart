import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:demo_templete/features/home/page/home/widgets/render_orders_home.dart';
import 'package:demo_templete/features/home/page/order_history/widgets/date_picker_time_line.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  late final _locale = appController.localization!;
  DateTime dateNow = DateTime.now();
  DateTime date =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColor.primaryColor, Color(0xff235DFF)],
        ),
      ),
      child: Stack(
        children: [
          RenderDatePickerTimeLine(
            onDateChange: (v) {
              setState(() {
                date = v;
              });
            },
          ),
          Positioned.fill(
            top: .35.sh,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(children: [
                const SizedBox(
                  height: 10,
                ),
                MyText(
                  text: DateFormat("MMMM yyyy").format(date),
                  style: getBoldStyle(
                      fontSize: FontSize.s24, color: AppColor.thirdColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RenderOrders(),
                ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
