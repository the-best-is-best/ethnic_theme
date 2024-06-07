import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:demo_templete/app/res/l10n/localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class AccountInfoView extends StatelessWidget {
  const AccountInfoView({
    super.key,
    required this.data,
    required AppLocalizations locale,
  }) : _locale = locale;

  final Map<String, dynamic> data;
  final AppLocalizations _locale;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: .4.sh,
        child: RenderAccount(
          data: data,
        ),
      ),
      const SizedBox(height: 20),
      Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.symmetric(horizontal: 25) +
              const EdgeInsets.only(top: 20, bottom: 10),
          decoration: BoxDecoration(
            color: const Color(0xffF5F7FD),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [AppColor.primaryColor, AppColor.secondColor],
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          FontAwesomeIcons.fileInvoiceDollar,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    MyText(
                      text: _locale.paymentDetails,
                      style: getBoldStyle(
                          fontSize: FontSize.s24, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Bank Name",
                                style: getRegularStyle(
                                    fontSize: FontSize.s14,
                                    color: Colors.black),
                              ),
                              MyText(
                                text: "Ally Bank",
                                style: getRegularStyle(
                                    fontSize: FontSize.s14,
                                    color: Colors.black),
                              ),
                            ]),
                        const SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "BSB",
                                style: getRegularStyle(
                                    fontSize: FontSize.s14,
                                    color: Colors.black),
                              ),
                              MyText(
                                text: "12121",
                                style: getRegularStyle(
                                    fontSize: FontSize.s14,
                                    color: Colors.black),
                              ),
                            ]),
                        const SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Account Name",
                                style: getRegularStyle(
                                    fontSize: FontSize.s14,
                                    color: Colors.black),
                              ),
                              MyText(
                                text: "Ally Bank Account",
                                style: getRegularStyle(
                                    fontSize: FontSize.s14,
                                    color: Colors.black),
                              ),
                            ]),
                        const SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Bank Number",
                                style: getRegularStyle(
                                    fontSize: FontSize.s14,
                                    color: Colors.black),
                              ),
                              MyText(
                                text: "A121",
                                style: getRegularStyle(
                                    fontSize: FontSize.s14,
                                    color: Colors.black),
                              ),
                            ]),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}

class RenderAccount extends StatefulWidget {
  final Map<String, dynamic> data;
  const RenderAccount({super.key, required this.data});

  @override
  State<RenderAccount> createState() => _RenderAccountState();
}

class _RenderAccountState extends State<RenderAccount> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.separated(
          itemBuilder: (_, index) {
            var data = widget.data.entries.toList()[index];
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 10.r,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: MyText(
                            text: data.key,
                            style: getBoldStyle(
                                fontSize: FontSize.s14, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: data.value is String &&
                              (data.value != "Active" &&
                                  data.value != "Inactive")
                          ? MyText(
                              text: data.value,
                              style: getBoldStyle(
                                  fontSize: FontSize.s14, color: Colors.black),
                            )
                          : Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: data.value == "Active" ||
                                          data.value == true
                                      ? Colors.green
                                      : Colors.red),
                              child: MyText(
                                text: (data.value is bool && data.value == true)
                                    ? "Yes"
                                    : (data.value is bool &&
                                            data.value == false)
                                        ? "No"
                                        : data.value.toString(),
                                style: getBoldStyle(
                                    fontSize: FontSize.s18,
                                    color: Colors.white),
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (_, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  color: Colors.grey.shade500,
                ),
              ),
          itemCount: widget.data.length),
    );
  }
}
