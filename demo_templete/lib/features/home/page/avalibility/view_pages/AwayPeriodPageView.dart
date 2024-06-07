import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class AwayPeriodPageView extends StatefulWidget {
  final List<int> days;

  const AwayPeriodPageView({super.key, required this.days});

  @override
  State<AwayPeriodPageView> createState() => _AwayPeriodPageViewState();
}

class _AwayPeriodPageViewState extends State<AwayPeriodPageView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: _RenderAwayPeriodDaysView(daysInt: widget.days),
    );
  }
}

class _RenderAwayPeriodDaysView extends StatefulWidget {
  final List<int>? daysInt;

  const _RenderAwayPeriodDaysView({super.key, required this.daysInt});

  @override
  State<_RenderAwayPeriodDaysView> createState() =>
      _RenderAwayPeriodDaysState();
}

class _RenderAwayPeriodDaysState extends State<_RenderAwayPeriodDaysView> {
  @override
  Widget build(BuildContext context) {
    if (widget.daysInt!.isEmpty) {}
    return Container(
      constraints: BoxConstraints(maxHeight: .55.sh, maxWidth: double.infinity),
      child: ListView.separated(
          shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "from ",
                              style: getMediumStyle(
                                  fontSize: FontSize.s16,
                                  color: const Color(0xff666666)),
                            ),
                            TextSpan(
                              text: "20/09/2023 ",
                              style: getMediumStyle(
                                  fontSize: FontSize.s16, color: Colors.black),
                            ),
                            TextSpan(
                              text: "to ",
                              style: getMediumStyle(
                                  fontSize: FontSize.s16,
                                  color: const Color(0xff666666)),
                            ),
                            TextSpan(
                              text: "20/09/2023",
                              style: getMediumStyle(
                                  fontSize: FontSize.s16, color: Colors.black),
                            ),
                          ])),
                        )
                      ]),
                ),
              ),
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemCount: widget.daysInt?.length ?? 0),
    );
  }
}
