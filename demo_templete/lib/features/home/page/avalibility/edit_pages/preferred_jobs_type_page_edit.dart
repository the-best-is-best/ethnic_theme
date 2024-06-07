import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class PreferredJobsTypePageEdit extends StatefulWidget {
  const PreferredJobsTypePageEdit({super.key});

  @override
  State<PreferredJobsTypePageEdit> createState() =>
      _PreferredJobsTypePageEditState();
}

class _PreferredJobsTypePageEditState extends State<PreferredJobsTypePageEdit> {
  List<bool> expandCard = List.generate(3, (index) => Random().nextBool());
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: .55.sh),
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: ListTile(
                      title: MyText(
                        text: index == 1
                            ? 'On Site'
                            : index == 2
                                ? "Phone"
                                : "Video Conference",
                        style: getBoldStyle(
                            fontSize: FontSize.s20, color: Colors.black),
                      ),
                      leading: Checkbox.adaptive(
                          fillColor: expandCard[index] != true
                              ? WidgetStateProperty.all(Colors.white)
                              : null,
                          value: expandCard[index],
                          onChanged: (v) {
                            setState(() {
                              expandCard[index] = v!;
                            });
                          })),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(height: 0),
          itemCount: 3),
    );
  }
}
