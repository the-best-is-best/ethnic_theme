import 'dart:math';

import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class PreferredJobsTypePageView extends StatefulWidget {
  const PreferredJobsTypePageView({super.key});

  @override
  State<PreferredJobsTypePageView> createState() =>
      _PreferredJobsTypePageViewState();
}

class _PreferredJobsTypePageViewState extends State<PreferredJobsTypePageView> {
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
                      leading: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColor.primaryColor,
                              AppColor.secondColor,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          index == 0
                              ? FontAwesomeIcons.building
                              : index == 1
                                  ? FontAwesomeIcons.phone
                                  : FontAwesomeIcons.video,
                          size: FontSize.s20,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(height: 0),
          itemCount: Random().nextInt(3) + 1),
    );
  }
}
