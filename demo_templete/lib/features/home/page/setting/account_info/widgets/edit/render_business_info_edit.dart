import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class RenderBusinessInfoEdit extends StatefulWidget {
  const RenderBusinessInfoEdit({super.key});

  @override
  State<RenderBusinessInfoEdit> createState() => _RenderBusinessInfoEditState();
}

class _RenderBusinessInfoEditState extends State<RenderBusinessInfoEdit> {
  final _locale = appController.localization!;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: _locale.businessInformation,
          style: getBoldStyle(fontSize: FontSize.s24, color: Colors.black),
        ),
        SizedBox(height: 20.h),
        Row(
          children: [
            CircleAvatar(
              radius: 10.r,
              backgroundColor: Colors.black,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: MyFormField(
                keyWidget: "ABN",
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
              text: _locale.legalForm,
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
              text: _locale.businessName,
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
        // gst
        Row(
          children: [
            CircleAvatar(
              radius: 10.r,
              backgroundColor: Colors.black,
            ),
            const SizedBox(width: 10),
            MyText(
              text: _locale.gst,
              style:
                  getMediumStyle(fontSize: FontSize.s16, color: Colors.black),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.green),
              child: MyText(
                text: "Yes",
                style:
                    getBoldStyle(fontSize: FontSize.s18, color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
