// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hotel Time`
  String get appTitle {
    return Intl.message(
      'Hotel Time',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `v1.0.0`
  String get appVersion {
    return Intl.message(
      'v1.0.0',
      name: 'appVersion',
      desc: '',
      args: [],
    );
  }

  /// `Povered by `
  String get appPoweredBy {
    return Intl.message(
      'Povered by ',
      name: 'appPoweredBy',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get bottomNavigationBarServices {
    return Intl.message(
      'Services',
      name: 'bottomNavigationBarServices',
      desc: '',
      args: [],
    );
  }

  /// `Chart`
  String get bottomNavigationBarChart {
    return Intl.message(
      'Chart',
      name: 'bottomNavigationBarChart',
      desc: '',
      args: [],
    );
  }

  /// `Events`
  String get bottomNavigationBarEvents {
    return Intl.message(
      'Events',
      name: 'bottomNavigationBarEvents',
      desc: '',
      args: [],
    );
  }

  /// `Shops`
  String get bottomNavigationBarShops {
    return Intl.message(
      'Shops',
      name: 'bottomNavigationBarShops',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get bottomNavigationBarLogin {
    return Intl.message(
      'Login',
      name: 'bottomNavigationBarLogin',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get drawerProfile {
    return Intl.message(
      'Profile',
      name: 'drawerProfile',
      desc: '',
      args: [],
    );
  }

  /// `Travels`
  String get drawerTravels {
    return Intl.message(
      'Travels',
      name: 'drawerTravels',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get drawerDocs {
    return Intl.message(
      'Documents',
      name: 'drawerDocs',
      desc: '',
      args: [],
    );
  }

  /// `Fly races`
  String get drawerFlyRaces {
    return Intl.message(
      'Fly races',
      name: 'drawerFlyRaces',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get drawerSettings {
    return Intl.message(
      'Settings',
      name: 'drawerSettings',
      desc: '',
      args: [],
    );
  }

  /// `Open information about user`
  String get drawerOpenLabel {
    return Intl.message(
      'Open information about user',
      name: 'drawerOpenLabel',
      desc: '',
      args: [],
    );
  }

  /// `Phone Verification`
  String get loginFieldPhoneLable {
    return Intl.message(
      'Phone Verification',
      name: 'loginFieldPhoneLable',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get loginFieldPhoneHint {
    return Intl.message(
      'Phone',
      name: 'loginFieldPhoneHint',
      desc: '',
      args: [],
    );
  }

  /// `Send the code`
  String get loginButtonTitle {
    return Intl.message(
      'Send the code',
      name: 'loginButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Verify Phone Number`
  String get loginVerifyPhoneLable {
    return Intl.message(
      'Verify Phone Number',
      name: 'loginVerifyPhoneLable',
      desc: '',
      args: [],
    );
  }

  /// `Edit Phone Number ?`
  String get loginEditPhoneLable {
    return Intl.message(
      'Edit Phone Number ?',
      name: 'loginEditPhoneLable',
      desc: '',
      args: [],
    );
  }

  /// `Wrong verify code`
  String get loginWrongVerifyPhoneCode {
    return Intl.message(
      'Wrong verify code',
      name: 'loginWrongVerifyPhoneCode',
      desc: '',
      args: [],
    );
  }

  /// `Please fill phone number field`
  String get loginEmptyPhoneField {
    return Intl.message(
      'Please fill phone number field',
      name: 'loginEmptyPhoneField',
      desc: '',
      args: [],
    );
  }

  /// `Something wrong with phone check`
  String get loginSomethingWrongWithCaptchaVerify {
    return Intl.message(
      'Something wrong with phone check',
      name: 'loginSomethingWrongWithCaptchaVerify',
      desc: '',
      args: [],
    );
  }

  /// `Enter code from SMS`
  String get loginCodeFromSMS {
    return Intl.message(
      'Enter code from SMS',
      name: 'loginCodeFromSMS',
      desc: '',
      args: [],
    );
  }

  /// `URL can't be launched.`
  String get urlCantOpen {
    return Intl.message(
      'URL can\'t be launched.',
      name: 'urlCantOpen',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
