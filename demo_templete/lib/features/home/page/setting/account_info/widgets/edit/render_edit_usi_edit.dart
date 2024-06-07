import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class RenderUsiEdit extends StatefulWidget {
  final void Function() view;

  const RenderUsiEdit({super.key, required this.view});

  @override
  State<RenderUsiEdit> createState() => _RenderEditUsiEditState();
}

class _RenderEditUsiEditState extends State<RenderUsiEdit> {
  late final _locale = appController.localization!;
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              MyText(
                text: _locale.superannuation,
                style:
                    getBoldStyle(fontSize: FontSize.s24, color: Colors.black),
              ),
              const Spacer(),
              Switch.adaptive(
                  inactiveTrackColor: Colors.grey,
                  value: false,
                  onChanged: (v) {
                    widget.view();
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
                  keyWidget: "MemberNumber",
                  label: _locale.superannuationNumber,
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
                  keyWidget: "USI",
                  label: _locale.usi,
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
                style: getRegularStyle(
                    fontSize: FontSize.s16, color: Colors.black),
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
                text: _locale.fundABN,
                style:
                    getMediumStyle(fontSize: FontSize.s16, color: Colors.black),
              ),
              const Spacer(),
              MyText(
                text: "Company Name",
                style: getRegularStyle(
                    fontSize: FontSize.s16, color: Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }
}
