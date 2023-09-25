import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart' show rootBundle;


class AppSettings {
  SharedPreferences? pref;
  AppSettings();

  static AppSettings? _current;

  static AppSettings get current {
    _current ??= AppSettings();
    return _current!;
  }



  Map<String, dynamic>? appSettings;

  int? userId= 0;
  String token= '';
  String refreshToken= '';

  initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    pref = await SharedPreferences.getInstance();
    String configjson = await rootBundle.loadString('assets/config.json');
    appSettings = jsonDecode(configjson);
  }

  initCulture() async {
    WidgetsFlutterBinding.ensureInitialized();

    await translator.init(
      localeType: LocalizationDefaultType.device,
      languagesList: <String>['ar', 'en'],
      assetsDirectory: 'assets/lang/',
    );
  }

  double? _textScale;
  double get textScale {
    if (_textScale == null) {
      double? val = pref?.getDouble('text-scale');
      if (val != null) {
        _textScale = val;
      }
    }
    return _textScale ?? 1.2;
  }

  set textScale(double? val) {
    _textScale = val;
    if (pref != null) {
      pref?.setDouble('text-scale', val ?? 1.2);
    }
  }
}
