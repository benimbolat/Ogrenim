import 'package:coklu_dil_destegi_ogrenim_1/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        LocaleConstants.trLocale,
        LocaleConstants.enLocale,
      ],
      saveLocale: true,
      fallbackLocale: LocaleConstants.enLocale,
      path: LocaleConstants.localePath,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      //
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Easy Loc."),
        ),
        body: Center(
          child: Column(
            children: [
              Text(LocaleConstants.merhaba),
              Text(LocaleConstants.nasilsin),
              TextButton(
                  onPressed: () {
                    context.setLocale(LocaleConstants.enLocale);
                    // if (context.setLocale == LocaleConstants.enLocale) {
                    //   context.setLocale(LocaleConstants.trLocale);
                    // } else {
                    //   context.setLocale(LocaleConstants.enLocale);
                    // }
                  },
                  child: const Text("Değiştir"))
            ],
          ),
        ),
      ),
    );
  }
}
