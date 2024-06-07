import 'package:demo_templete/app/res/l10n/localization.dart';
import 'package:demo_templete/main.dart';
import 'package:flutter/widgets.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

AppContextExtension appController = AppContextExtension(navigatorKey);

extension AppLocalizationExt on AppContextExtension {
  AppLocalizations? get localization => Localizations.of<AppLocalizations>(
      appController.navigatorKey.currentContext!, AppLocalizations);
}
