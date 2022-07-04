import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocaleConstants {
  static const trLocale = Locale("tr", "TR");
  static const enLocale = Locale("en", "US");
  static const localePath = "assets/lang";
  /////////////////////////////////////////////////////
  ///
  static String merhaba = "merhaba arkadaşlar".myLocale;
  static String nasilsin = "nasılsınız".myLocale;
}

extension LocaleExtebsion on String {
  String get myLocale => this.tr().toString();
}
