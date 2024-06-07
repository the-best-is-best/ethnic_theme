import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class RenderSMSFEdit extends StatefulWidget {
  final void Function() view;
  const RenderSMSFEdit({super.key, required this.view});

  @override
  State<RenderSMSFEdit> createState() => _RenderSMSFEditState();
}

class _RenderSMSFEditState extends State<RenderSMSFEdit> {
  final _locale = appController.localization!;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            MyText(
              text: _locale.superannuation,
              style: getBoldStyle(fontSize: FontSize.s24, color: Colors.black),
            ),
            const Spacer(),
            Switch(
                value: true,
                onChanged: (v) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    widget.view();
                  });
                })
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              radius: 10.r,
              backgroundColor: Colors.black,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: MyFormField(
                keyWidget: "ABN_superannuationFund",
                label: _locale.abn,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              radius: 10.r,
              backgroundColor: Colors.black,
            ),
            const SizedBox(width: 10),
            MyText(
              text: _locale.fundName,
              style:
                  getMediumStyle(fontSize: FontSize.s16, color: Colors.black),
            ),
            const Spacer(),
            MyText(
              text: "Company Name",
              style:
                  getRegularStyle(fontSize: FontSize.s16, color: Colors.black),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              radius: 10.r,
              backgroundColor: Colors.black,
            ),
            const SizedBox(width: 10),
            MyText(
              text: _locale.status,
              style:
                  getMediumStyle(fontSize: FontSize.s16, color: Colors.black),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
              child: MyText(
                text: "No",
                style:
                    getBoldStyle(fontSize: FontSize.s18, color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 10.r,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: MyFormField(
                keyWidget: "esa",
                label: _locale.esa,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 10.r,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: MyFormField(
                keyWidget: "smsfAccountName",
                label: _locale.accountName,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 10.r,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: MyFormField(
                keyWidget: "smsfAccountNumber",
                label: _locale.accountNumber,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 10.r,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: MyFormField(
                keyWidget: "smsfBSB",
                label: _locale.bsb,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
