import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class RenderBankInfoEdit extends StatefulWidget {
  const RenderBankInfoEdit({super.key});

  @override
  State<RenderBankInfoEdit> createState() => _RenderBankInfoEditState();
}

class _RenderBankInfoEditState extends State<RenderBankInfoEdit> {
  final _locale = appController.localization!;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: _locale.bankAccountInfo,
          style: getBoldStyle(fontSize: FontSize.s24, color: Colors.black),
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
                keyWidget: "BankName",
                label: _locale.bankName,
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
            Expanded(
              child: MyFormField(
                keyWidget: "accountNumber",
                label: _locale.accountNumber,
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
            Expanded(
              child: MyFormField(
                keyWidget: "accountName",
                label: _locale.accountName,
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
            Expanded(
              child: MyFormField(
                keyWidget: "bsb",
                label: _locale.bsb,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
            )
          ],
        ),
      ],
    );
  }
}
