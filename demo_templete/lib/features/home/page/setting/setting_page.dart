import 'package:demo_templete/app/common/widgets/app_bar.dart';
import 'package:demo_templete/app/extensions/app_localization_ext.dart';
import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  late final _locale = appController.localization!;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RenderAppBar(
          title: _locale.setting,
          supportEditMode: false,
        ),
        const SizedBox(height: 20),
        MyListTile(
          leading: const Icon(
            FontAwesomeIcons.addressCard,
            color: AppColor.secondColor,
          ),
          title: _locale.accountDetails,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: AppColor.secondColor,
          ),
          onTap: () {
            // const AccountInfoRoute().push(context);
          },
        ),
        const SizedBox(height: 20),
        MyListTile(
          leading: const Icon(
            Icons.person,
            color: AppColor.secondColor,
          ),
          title: _locale.profile,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: AppColor.secondColor,
          ),
          onTap: () {
            //    const BuildProfileRoute().push(context);
          },
        ),
        const SizedBox(height: 20),
        MyListTile(
          leading: const Icon(FontAwesomeIcons.clockRotateLeft,
              color: AppColor.secondColor),
          title: _locale.upcoming,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: AppColor.secondColor,
          ),
          onTap: () {
            //  const ComingSoonRoute().push(context);
          },
        ),

        // logout
        const SizedBox(height: 20),
        MyListTile(
          leading: const Icon(
            Icons.logout,
            color: AppColor.secondColor,
          ),
          title: _locale.logout,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: AppColor.secondColor,
          ),
          onTap: () async {
            //  var idToken =
            //     await SecureStorageService.storage.read(key: Constants.idToken);
            // try {
            //   await OpenIdServices().endSession(idToken!);
            //   await SecureStorageService.storage
            //       .delete(key: Constants.accessToken);
            //   const LoginRoute().go(context);
            // } catch (e) {
            //   print(e);
            // }
          },
        ),
      ],
    );
  }
}
