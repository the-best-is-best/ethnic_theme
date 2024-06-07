import 'dart:math';

import 'package:demo_templete/app/common/widgets/app_bar.dart';
import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:demo_templete/features/home/page/setting/account_info/widgets/render_account_edit.dart';
import 'package:demo_templete/features/home/page/setting/account_info/widgets/render_account_view.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class AccountInfoPage extends StatefulWidget {
  const AccountInfoPage({super.key});

  @override
  State<AccountInfoPage> createState() => _AccountInfoPageState();
}

class _AccountInfoPageState extends State<AccountInfoPage> {
  late final _locale = appController.localization!;
  bool isEdit = false;
  Map<String, dynamic> data = {
    "ABN": "INTER_HUB1222",
    "Billing Name": "INTER_HUB",
    "Billing Type": "Company",
    "GST Registered": Random().nextBool(),
    if (Random().nextInt(2) == 1) ...{
      "SMSF ABN": "INTER_HUB1222",
      "SMSF Name": "INTER_HUB",
      "SMSF Type": "Company",
      "Status": Random().nextInt(2) == 1 ? "Active" : "Inactive",
      "ESA": "INTER_HUB1222",
      "Account Name": "INTER_HUB",
      "Account Number": "1222",
      "BSB": "1122",
    } else ...{
      "USI": "3232223",
      "Super Fund Name": "INTER_HUB",
      "Super Member No": "121asd",
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RenderAppBar(
            title: _locale.accountDetails,
            supportBack: !isEdit,
            onEdit: (isEdit) {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                setState(() {
                  this.isEdit = isEdit;
                });
              });
            },
            inEditMode: isEdit,
            revert: () {
              setState(() {
                isEdit = false;
              });
            },
          ),
          const SizedBox(height: 10),
          Expanded(
            child: LayoutBuilder(
              builder: (_, constraint) => AnimatedCrossFade(
                  firstChild: SizedBox(
                      height: constraint.maxHeight,
                      width: context.width,
                      child: AccountInfoView(data: data, locale: _locale)),
                  secondChild: SizedBox(
                      height: constraint.maxHeight,
                      width: context.width,
                      child: RenderAccountEdit(locale: _locale)),
                  crossFadeState: isEdit
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 500)),
            ),
          )
        ],
      ),
    );
  }
}
