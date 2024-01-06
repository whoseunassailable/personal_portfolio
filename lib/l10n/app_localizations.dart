import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
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

  /// No description provided for @helloWorld.
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get aboutMe;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Hi! I am Rohan Bhande \nFlutter Developer'**
  String get name;

  /// No description provided for @applicationDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Flutter Developer'**
  String get applicationDeveloper;

  /// No description provided for @selfDescription.
  ///
  /// In en, this message translates to:
  /// **'I am an Indian based Flutter developer focused \n on crafting clean & user-friendly mobile applications.\nI am extremely passionate about building excellent\nsoftware that improves the lives of those around me. '**
  String get selfDescription;

  /// No description provided for @moreAboutMe.
  ///
  /// In en, this message translates to:
  /// **'MORE ABOUT ME'**
  String get moreAboutMe;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// No description provided for @launchVentures.
  ///
  /// In en, this message translates to:
  /// **'Launch Ventures \nFlutter Developer'**
  String get launchVentures;

  /// No description provided for @launchVenturesDescriptionPointOne.
  ///
  /// In en, this message translates to:
  /// **'• Utilizing the Flutter framework to create cross-platform native applications.'**
  String get launchVenturesDescriptionPointOne;

  /// No description provided for @launchVenturesDescriptionPointTwo.
  ///
  /// In en, this message translates to:
  /// **'• Collaborating with multidisciplinary teams to design, develop, and deploy fully functional applications.'**
  String get launchVenturesDescriptionPointTwo;

  /// No description provided for @launchVenturesDescriptionPointThree.
  ///
  /// In en, this message translates to:
  /// **'• Successfully delivering applications meeting client specifications and requirements.'**
  String get launchVenturesDescriptionPointThree;

  /// No description provided for @mitFoss.
  ///
  /// In en, this message translates to:
  /// **'MIT FOSS \nFull Stack Developer Intern'**
  String get mitFoss;

  /// No description provided for @mitFossDescriptionPointOne.
  ///
  /// In en, this message translates to:
  /// **'• Designed comprehensive UML flowcharts and diagrams for web and mobile application structures.'**
  String get mitFossDescriptionPointOne;

  /// No description provided for @mitFossDescriptionPointTwo.
  ///
  /// In en, this message translates to:
  /// **'• Created intuitive user interfaces using Figma for wireframing and prototyping.'**
  String get mitFossDescriptionPointTwo;

  /// No description provided for @mitFossDescriptionPointThree.
  ///
  /// In en, this message translates to:
  /// **'• Developed responsive websites using HTML, CSS, and JavaScript for optimal functionality and user.'**
  String get mitFossDescriptionPointThree;

  /// No description provided for @viralFission.
  ///
  /// In en, this message translates to:
  /// **'Viral Fission \nIntern'**
  String get viralFission;

  /// No description provided for @viralFissionDescription.
  ///
  /// In en, this message translates to:
  /// **'• Actively participated in the successful Vice Marketing Campaign and collaborated  with prominent platforms including Netflix, Myntra, and Jio Saavn for effective  marketing initiatives.'**
  String get viralFissionDescription;
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
