import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:demo_templete/app/res/l10n/localization.dart';
import 'package:demo_templete/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(const ProviderScope(child: MyApp()));
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StartAppWidget(
      startWidgetApp: MaterialApp.router(
          routerDelegate: goRouter.routerDelegate,
          routeInformationParser: goRouter.routeInformationParser,
          routeInformationProvider: goRouter.routeInformationProvider,
          debugShowCheckedModeBanner: false,
          locale: const Locale('en', 'AU'),
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          // title: 'Flutter Demo',
          builder: (context, child) {
            final data = MediaQuery.of(context);
            ScreenUtil.init(
              context,
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
            );
            return Builder(builder: (context) {
              return Theme(
                data: DefaultThemeApp()
                    .defaultTheme(
                        fontFamily: GoogleFonts.urbanist().fontFamily,
                        primaryColor: AppColor.primaryColor,
                        secondColor: AppColor.secondColor,
                        buttonsColor: AppColor.thirdColor,
                        canvasColor: AppColor.canvasColor)
                    .copyWith(
                        colorScheme: ColorScheme.fromSwatch(
                            primarySwatch: Colors.blue,
                            accentColor: Colors.blueAccent,
                            backgroundColor: AppColor.thirdColor,
                            cardColor: Colors.white,
                            errorColor: Colors.red,
                            brightness: Brightness.light),
                        canvasColor: Colors.white,
                        checkboxTheme: CheckboxThemeData(
                          fillColor:
                              WidgetStateProperty.all(AppColor.secondColor),
                          checkColor: WidgetStateProperty.all(Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        inputDecorationTheme: InputDecorationTheme(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          errorStyle: getMediumStyle(
                                  color: Colors.red, fontSize: FontSize.s14)
                              .copyWith(height: 1.8),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xff1E2940)),
                              borderRadius: BorderRadius.circular(12)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffCDCDCD)),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xff1E2940)),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        elevatedButtonTheme: ElevatedButtonThemeData(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              minimumSize: const Size(100, 55),
                              backgroundColor: AppColor.thirdColor,
                              textStyle: getMediumStyle(
                                  color: Colors.white, fontSize: FontSize.s16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                        applyElevationOverlayColor: true,
                        appBarTheme: myAppBarTheme(Colors.transparent),
                        iconTheme: IconThemeData(
                            color: AppColor.primaryColor.withOpacity(.5),
                            size: FontSize.s30),
                        bottomNavigationBarTheme: BottomNavigationBarThemeData(
                          selectedIconTheme: IconThemeData(
                              color: AppColor.secondColor, size: FontSize.s30),
                          unselectedIconTheme: IconThemeData(
                              color: const Color(0xff2A2A2A).withOpacity(.5),
                              size: FontSize.s28),
                        )),
                child: MediaQuery(
                  data: data.copyWith(textScaler: const TextScaler.linear(1)),
                  child: AnnotatedRegion(
                      value: SystemUiOverlayStyle(
                        statusBarColor: Colors.white.withAlpha(1),
                        systemNavigationBarColor: Colors.white.withAlpha(1),
                        statusBarIconBrightness: Brightness.light,
                        statusBarBrightness: Brightness.light,
                        systemNavigationBarDividerColor:
                            Colors.white.withAlpha(1),
                        systemNavigationBarIconBrightness: Brightness.light,
                        systemNavigationBarContrastEnforced: true,
                        systemStatusBarContrastEnforced: true,
                      ),
                      child: child!),
                ),
              );
            });
          }),
    );
  }
}
