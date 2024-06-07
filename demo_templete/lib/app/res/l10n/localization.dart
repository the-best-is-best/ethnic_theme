import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'localization_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @getStart.
  ///
  /// In en, this message translates to:
  /// **'Get Start'**
  String get getStart;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @getStartText.
  ///
  /// In en, this message translates to:
  /// **'Get translations in real time, so you can keep the conversation flowing'**
  String get getStartText;

  /// No description provided for @welcomeScreen1Title.
  ///
  /// In en, this message translates to:
  /// **'Welcome to the Interpreter App !'**
  String get welcomeScreen1Title;

  /// No description provided for @welcomeScreen1Description.
  ///
  /// In en, this message translates to:
  /// **'Simplify the request management for the interpreters'**
  String get welcomeScreen1Description;

  /// No description provided for @welcomeScreen2Title.
  ///
  /// In en, this message translates to:
  /// **'Manage Your Assignments'**
  String get welcomeScreen2Title;

  /// No description provided for @welcomeScreen2Description.
  ///
  /// In en, this message translates to:
  /// **'Track and accept new request instantly'**
  String get welcomeScreen2Description;

  /// No description provided for @welcomeScreen3Title.
  ///
  /// In en, this message translates to:
  /// **'Track History and Update Profile'**
  String get welcomeScreen3Title;

  /// No description provided for @welcomeScreen3Description.
  ///
  /// In en, this message translates to:
  /// **'Access your past request and update your profile info'**
  String get welcomeScreen3Description;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back !'**
  String get welcomeBack;

  /// No description provided for @happyToSeeYou.
  ///
  /// In en, this message translates to:
  /// **'Happy to see you again..'**
  String get happyToSeeYou;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @hintTextUserName.
  ///
  /// In en, this message translates to:
  /// **'Enter username'**
  String get hintTextUserName;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @hintTextEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter email'**
  String get hintTextEmail;

  /// No description provided for @hintTextPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get hintTextPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @hintConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter confirm password'**
  String get hintConfirmPassword;

  /// No description provided for @forgetPasswordTile.
  ///
  /// In en, this message translates to:
  /// **'Forgot Your Password?'**
  String get forgetPasswordTile;

  /// No description provided for @minPasswordLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get minPasswordLength;

  /// No description provided for @passwordMustContainOneUpperCase.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one uppercase'**
  String get passwordMustContainOneUpperCase;

  /// No description provided for @passwordMustContainOneLowerCase.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one lowercase'**
  String get passwordMustContainOneLowerCase;

  /// No description provided for @passwordMustContainOneNumber.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one number'**
  String get passwordMustContainOneNumber;

  /// No description provided for @passwordMustContainOneSpecialCharacter.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one special character'**
  String get passwordMustContainOneSpecialCharacter;

  /// No description provided for @forgetPasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter your registered email below to receive the rest password instructions in your inbox'**
  String get forgetPasswordDescription;

  /// No description provided for @passwordIsMatch.
  ///
  /// In en, this message translates to:
  /// **'Password is match'**
  String get passwordIsMatch;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @resetYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Your Password'**
  String get resetYourPassword;

  /// No description provided for @backToLogin.
  ///
  /// In en, this message translates to:
  /// **'Back To Login'**
  String get backToLogin;

  /// No description provided for @verificationCode.
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get verificationCode;

  /// No description provided for @pleaseEnterThe6DigitVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Please Enter the 6 digit verification code sent on your Email'**
  String get pleaseEnterThe6DigitVerificationCode;

  /// No description provided for @errorVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'The verification code you entered is incorrect, please check again or resend it now.'**
  String get errorVerificationCode;

  /// No description provided for @didntReceiveTheCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive the code?'**
  String get didntReceiveTheCode;

  /// No description provided for @resendNow.
  ///
  /// In en, this message translates to:
  /// **'Resend Now'**
  String get resendNow;

  /// No description provided for @checkYourEmailText.
  ///
  /// In en, this message translates to:
  /// **'Check Your Email'**
  String get checkYourEmailText;

  /// No description provided for @checkYourEmailDescription.
  ///
  /// In en, this message translates to:
  /// **'A password recovery Email is sent to your Email Please check your junk/Spam folder.'**
  String get checkYourEmailDescription;

  /// No description provided for @didNotReceiveEmail.
  ///
  /// In en, this message translates to:
  /// **'You haven’t received any mail ? '**
  String get didNotReceiveEmail;

  /// No description provided for @resetPasswordTile.
  ///
  /// In en, this message translates to:
  /// **'Reset Your Password'**
  String get resetPasswordTile;

  /// No description provided for @resetYourPasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'Please enter your new password'**
  String get resetYourPasswordDescription;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @checkYourOrder.
  ///
  /// In en, this message translates to:
  /// **'Check Your Order'**
  String get checkYourOrder;

  /// No description provided for @tody.
  ///
  /// In en, this message translates to:
  /// **'Today!'**
  String get tody;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @todaysOrders.
  ///
  /// In en, this message translates to:
  /// **'Today’s Orders'**
  String get todaysOrders;

  /// No description provided for @upcomingOrders.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Orders'**
  String get upcomingOrders;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @interpreter.
  ///
  /// In en, this message translates to:
  /// **'Interpreter'**
  String get interpreter;

  /// No description provided for @translator.
  ///
  /// In en, this message translates to:
  /// **'Translator'**
  String get translator;

  /// No description provided for @orderDetails.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get orderDetails;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @availability.
  ///
  /// In en, this message translates to:
  /// **'Availability'**
  String get availability;

  /// No description provided for @awayPeriod.
  ///
  /// In en, this message translates to:
  /// **'Away Period'**
  String get awayPeriod;

  /// No description provided for @preferredOrderType.
  ///
  /// In en, this message translates to:
  /// **'Preferred Order Type'**
  String get preferredOrderType;

  /// No description provided for @availableAllDays.
  ///
  /// In en, this message translates to:
  /// **'Available 24/7'**
  String get availableAllDays;

  /// No description provided for @availableAllDaysDescription.
  ///
  /// In en, this message translates to:
  /// **'Available all days of week 24/7'**
  String get availableAllDaysDescription;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @customDescription.
  ///
  /// In en, this message translates to:
  /// **'Please select your available days & hours'**
  String get customDescription;

  /// No description provided for @setting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get setting;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon'**
  String get comingSoon;

  /// No description provided for @accountDetails.
  ///
  /// In en, this message translates to:
  /// **'Account Details'**
  String get accountDetails;

  /// No description provided for @paymentDetails.
  ///
  /// In en, this message translates to:
  /// **'Payment Details'**
  String get paymentDetails;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @businessInformation.
  ///
  /// In en, this message translates to:
  /// **'Business Information'**
  String get businessInformation;

  /// No description provided for @abn.
  ///
  /// In en, this message translates to:
  /// **'ABN'**
  String get abn;

  /// No description provided for @legalForm.
  ///
  /// In en, this message translates to:
  /// **'Legal Form'**
  String get legalForm;

  /// No description provided for @businessName.
  ///
  /// In en, this message translates to:
  /// **'Business Name'**
  String get businessName;

  /// No description provided for @gst.
  ///
  /// In en, this message translates to:
  /// **'GST Registered'**
  String get gst;

  /// No description provided for @bankAccountInfo.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Info'**
  String get bankAccountInfo;

  /// No description provided for @bankName.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bankName;

  /// No description provided for @accountName.
  ///
  /// In en, this message translates to:
  /// **'Account Name'**
  String get accountName;

  /// No description provided for @bsb.
  ///
  /// In en, this message translates to:
  /// **'BSB'**
  String get bsb;

  /// No description provided for @accountNumber.
  ///
  /// In en, this message translates to:
  /// **'Account Number'**
  String get accountNumber;

  /// No description provided for @superannuation.
  ///
  /// In en, this message translates to:
  /// **'Superannuation'**
  String get superannuation;

  /// No description provided for @fundName.
  ///
  /// In en, this message translates to:
  /// **'Fund Name'**
  String get fundName;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @esa.
  ///
  /// In en, this message translates to:
  /// **'Electronic Services Address(ESA)'**
  String get esa;

  /// No description provided for @superannuationNumber.
  ///
  /// In en, this message translates to:
  /// **'Superannuation Number'**
  String get superannuationNumber;

  /// No description provided for @usi.
  ///
  /// In en, this message translates to:
  /// **'Unique Superannuation Identifier (USI)'**
  String get usi;

  /// No description provided for @fundABN.
  ///
  /// In en, this message translates to:
  /// **'Fund ABN'**
  String get fundABN;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
