import 'dart:math';

import 'package:demo_templete/app/common/widgets/app_bar.dart';
import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:demo_templete/features/home/page/avalibility/edit_pages/avalibility_edit_page.dart';
import 'package:demo_templete/features/home/page/avalibility/edit_pages/preferred_jobs_type_page_edit.dart';
import 'package:demo_templete/features/home/page/avalibility/edit_pages/render_away_period_edit.dart';
import 'package:demo_templete/features/home/page/avalibility/view_pages/AwayPeriodPageView.dart';
import 'package:demo_templete/features/home/page/avalibility/view_pages/avalibility_view_page.dart';
import 'package:demo_templete/features/home/page/avalibility/view_pages/preferred_jobs_type_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class AvailabilityScreen extends StatefulWidget {
  const AvailabilityScreen({super.key});

  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  int? selectedAvailabilityTab;
  bool inEditMode = false;
  List<int> days = [
    for (int i = 0; i < Random().nextInt(6); i++) ...{i}
  ];
  @override
  void initState() {
    super.initState();
    if (days.isEmpty) {
      setState(() {
        days = [1];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    late final locale = appController.localization!;

    return Column(children: [
      RenderAppBar(
        supportEditMode: selectedAvailabilityTab != null ? true : false,
        title: locale.availability,
        inEditMode: inEditMode,
        onEdit: (edit) {
          setState(() {
            inEditMode = edit;
          });
        },
        supportBack: selectedAvailabilityTab != null,
        back: () {
          setState(() {
            selectedAvailabilityTab = null;
            inEditMode = false;
          });
        },
        revert: () {
          setState(() {
            inEditMode = false;
          });
        },
      ),
      const SizedBox(height: 30),
      AnimatedCrossFade(
          firstChild: Column(
            children: [
              for (int i = 0; i < 3; i++) ...{
                MyListTile(
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
                      i == 0
                          ? FontAwesomeIcons.userClock
                          : i == 1
                              ? FontAwesomeIcons.clock
                              : FontAwesomeIcons.bookmark,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  title: i == 0
                      ? locale.availability
                      : i == 1
                          ? locale.awayPeriod
                          : locale.preferredOrderType,
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.secondColor,
                  ),
                  onTap: () {
                    setState(() {
                      selectedAvailabilityTab = i;
                    });
                  },
                ),
                if (i < 2) const SizedBox(height: 40),
              }
            ],
          ),
          secondChild: selectedAvailabilityTab == 0 && !inEditMode
              ? AvailabilityPageView(
                  days: days,
                )
              : selectedAvailabilityTab == 0 && inEditMode
                  ? AvailabilityPageEdit(
                      days: days,
                    )
                  : selectedAvailabilityTab == 1 && !inEditMode
                      ? AwayPeriodPageView(days: days)
                      : selectedAvailabilityTab == 1 && inEditMode
                          ? RenderAwayPeriodEdit(
                              days: days,
                            )
                          : selectedAvailabilityTab == 2 && !inEditMode
                              ? const PreferredJobsTypePageView()
                              : const PreferredJobsTypePageEdit(),
          crossFadeState: selectedAvailabilityTab == null
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500))
    ]);
  }
}
