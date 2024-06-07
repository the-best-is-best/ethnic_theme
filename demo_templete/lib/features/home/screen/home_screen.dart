import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:demo_templete/features/home/page/avalibility/AvailabilityScreen.dart';
import 'package:demo_templete/features/home/page/home/home_page.dart';
import 'package:demo_templete/features/home/page/order_history/order_history_page.dart';
import 'package:demo_templete/features/home/page/setting/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectTab == 0
          ? const HomePage()
          : _selectTab == 1
              ? const OrderHistoryPage()
              : _selectTab == 2
                  ? const AvailabilityScreen()
                  : _selectTab == 3
                      ? const SettingPage()
                      : Container(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectTab,
          onTap: (index) {
            setState(() {
              _selectTab = index;
            });
          },
          selectedIconTheme: const IconThemeData(color: AppColor.thirdColor),
          backgroundColor: Colors.white,
          selectedLabelStyle: getMediumStyle(fontSize: FontSize.s14),
          unselectedLabelStyle: getRegularStyle(fontSize: FontSize.s14),
          iconSize: 30,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.watch_later_sharp), label: 'Availability'),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.monetization_on_rounded), label: 'Remittance'),
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_accounts_rounded), label: 'Account'),
          ]),
    );
  }
}
