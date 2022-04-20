import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);

  final String cName = 'Ahmet';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'İsim : $cName ${cName.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'İsim : $cName ${cName.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'İsim : $cName ${cName.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(keys.welcomeText),
          ],
        ),
      ),
    );
  }
}

//Style öğelerini bir kere yaz ve heryerde yaz. Kod karmaşasından kurtul.
class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    letterSpacing: 2,
    color: Colors.lime,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

class ProjectKeys {
  String welcomeText = ("Merhaba");
}
