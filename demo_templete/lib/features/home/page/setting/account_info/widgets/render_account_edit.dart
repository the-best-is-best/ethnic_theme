import 'package:demo_templete/app/res/l10n/localization.dart';
import 'package:demo_templete/features/home/page/setting/account_info/widgets/edit/render_bank_info_edit.dart';
import 'package:demo_templete/features/home/page/setting/account_info/widgets/edit/render_business_info_edit.dart';
import 'package:demo_templete/features/home/page/setting/account_info/widgets/edit/render_edit_smsf_edit.dart';
import 'package:demo_templete/features/home/page/setting/account_info/widgets/edit/render_edit_usi_edit.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class RenderAccountEdit extends StatefulWidget {
  const RenderAccountEdit({
    super.key,
    required AppLocalizations locale,
  }) : _locale = locale;

  final AppLocalizations _locale;

  @override
  State<RenderAccountEdit> createState() => _RenderAccountEditState();
}

class _RenderAccountEditState extends State<RenderAccountEdit> {
  bool useSMSF = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25) +
            const EdgeInsets.only(top: 20, bottom: 10),
        child: FormBuilder(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RenderBusinessInfoEdit(),
              const SizedBox(height: 20),
              const Divider(color: Colors.grey),
              const SizedBox(height: 20),
              const RenderBankInfoEdit(),
              const SizedBox(height: 20),
              const Divider(color: Colors.grey),
              const SizedBox(height: 20),
              Container(
                constraints: const BoxConstraints(
                  maxHeight: 500,
                  minHeight: 0,
                ),
                child: SingleChildScrollView(
                  child: AnimatedCrossFade(
                    duration: const Duration(milliseconds: 500),
                    crossFadeState: !useSMSF
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    firstChild: RenderUsiEdit(
                      view: () {
                        useSMSF = true;

                        setState(() {
                          WidgetsBinding.instance
                              .addPostFrameCallback((timeStamp) {});
                        });
                      },
                    ),
                    secondChild: RenderSMSFEdit(
                      view: () {
                        useSMSF = false;
                        setState(() {
                          WidgetsBinding.instance
                              .addPostFrameCallback((timeStamp) {});
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
