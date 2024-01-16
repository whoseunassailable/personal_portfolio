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
  /// **'• Actively participated in the successful Vice Marketing Campaign and collaborated with prominent platforms including Netflix, Myntra, and Jio Saavn for effective  marketing initiatives.'**
  String get viralFissionDescription;

  /// No description provided for @kokoFreshAgent.
  ///
  /// In en, this message translates to:
  /// **'01. Koko Fresh Agent'**
  String get kokoFreshAgent;

  /// No description provided for @kokoFreshAgentDescription.
  ///
  /// In en, this message translates to:
  /// **'Created a data retrieval application tailored for milk delivery agents, including features such as graph visualization, MPesa payment integration, NFC card reading, daily sales tracking, token generation for lost Mpesa transactions, top-up history management, create and reset pin, etc.'**
  String get kokoFreshAgentDescription;

  /// No description provided for @coventryMeditation.
  ///
  /// In en, this message translates to:
  /// **'02. Coventry Meditation'**
  String get coventryMeditation;

  /// No description provided for @kokoFreshOperator.
  ///
  /// In en, this message translates to:
  /// **'03. Koko Fresh Operator'**
  String get kokoFreshOperator;

  /// No description provided for @snapshots.
  ///
  /// In en, this message translates to:
  /// **'Snapshots'**
  String get snapshots;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @osOne.
  ///
  /// In en, this message translates to:
  /// **'Windows'**
  String get osOne;

  /// No description provided for @osTwo.
  ///
  /// In en, this message translates to:
  /// **'Linux'**
  String get osTwo;

  /// No description provided for @osThree.
  ///
  /// In en, this message translates to:
  /// **'MacOs'**
  String get osThree;

  /// No description provided for @flutter.
  ///
  /// In en, this message translates to:
  /// **'Flutter'**
  String get flutter;

  /// No description provided for @dart.
  ///
  /// In en, this message translates to:
  /// **'Dart'**
  String get dart;

  /// No description provided for @python.
  ///
  /// In en, this message translates to:
  /// **'Python'**
  String get python;

  /// No description provided for @java.
  ///
  /// In en, this message translates to:
  /// **'Java'**
  String get java;

  /// No description provided for @javaScript.
  ///
  /// In en, this message translates to:
  /// **'JavaScript'**
  String get javaScript;

  /// No description provided for @mySql.
  ///
  /// In en, this message translates to:
  /// **'MySQL'**
  String get mySql;

  /// No description provided for @firebase.
  ///
  /// In en, this message translates to:
  /// **'Firebase'**
  String get firebase;

  /// No description provided for @figma.
  ///
  /// In en, this message translates to:
  /// **'Figma'**
  String get figma;

  /// No description provided for @obsidian.
  ///
  /// In en, this message translates to:
  /// **'Obsdian'**
  String get obsidian;

  /// No description provided for @umlDiagrams.
  ///
  /// In en, this message translates to:
  /// **'UML Diagram'**
  String get umlDiagrams;

  /// No description provided for @cicd.
  ///
  /// In en, this message translates to:
  /// **'CI-CD'**
  String get cicd;

  /// No description provided for @os.
  ///
  /// In en, this message translates to:
  /// **'Operating Systems'**
  String get os;

  /// No description provided for @languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// No description provided for @framework.
  ///
  /// In en, this message translates to:
  /// **'Framework'**
  String get framework;

  /// No description provided for @database.
  ///
  /// In en, this message translates to:
  /// **'Database'**
  String get database;

  /// No description provided for @tools.
  ///
  /// In en, this message translates to:
  /// **'Tools'**
  String get tools;

  /// No description provided for @dontFeelShy.
  ///
  /// In en, this message translates to:
  /// **'Don’t feel Shy'**
  String get dontFeelShy;

  /// No description provided for @gotAQuestion.
  ///
  /// In en, this message translates to:
  /// **'Got a question or proposal, or just want to say hello? Go ahead.'**
  String get gotAQuestion;

  /// No description provided for @yourName.
  ///
  /// In en, this message translates to:
  /// **'Your Name'**
  String get yourName;

  /// No description provided for @yourEmail.
  ///
  /// In en, this message translates to:
  /// **'Your Email'**
  String get yourEmail;

  /// No description provided for @typeYourMessageHere.
  ///
  /// In en, this message translates to:
  /// **'Type You message here ....'**
  String get typeYourMessageHere;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @xxxs.
  ///
  /// In en, this message translates to:
  /// **'xxxs'**
  String get xxxs;

  /// No description provided for @xxs.
  ///
  /// In en, this message translates to:
  /// **'xxs'**
  String get xxs;

  /// No description provided for @xs.
  ///
  /// In en, this message translates to:
  /// **'xs'**
  String get xs;

  /// No description provided for @s.
  ///
  /// In en, this message translates to:
  /// **'s'**
  String get s;

  /// No description provided for @m.
  ///
  /// In en, this message translates to:
  /// **'m'**
  String get m;

  /// No description provided for @l.
  ///
  /// In en, this message translates to:
  /// **'l'**
  String get l;

  /// No description provided for @xl.
  ///
  /// In en, this message translates to:
  /// **'xl'**
  String get xl;

  /// No description provided for @xxl.
  ///
  /// In en, this message translates to:
  /// **'xxl'**
  String get xxl;

  /// No description provided for @xxxl.
  ///
  /// In en, this message translates to:
  /// **'xxxl'**
  String get xxxl;

  /// No description provided for @socials.
  ///
  /// In en, this message translates to:
  /// **'Socials'**
  String get socials;

  /// No description provided for @github.
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get github;

  /// No description provided for @linkedIn.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get linkedIn;

  /// No description provided for @stackOverflow.
  ///
  /// In en, this message translates to:
  /// **'StackOverflow'**
  String get stackOverflow;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;
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
