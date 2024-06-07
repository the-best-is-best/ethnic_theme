import 'package:demo_templete/features/home/page/home/widgets/appbar_home_page.dart';
import 'package:demo_templete/features/home/page/home/widgets/render_orders_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int orderTab = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RenderHomeAppBar(
          onTabSelected: (index) {
            if (index != orderTab) {
              setState(() {
                orderTab = index;
              });
            }
          },
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RenderOrdersHome(
            orderTab: orderTab,
          ),
        )
      ],
    );
  }
}
