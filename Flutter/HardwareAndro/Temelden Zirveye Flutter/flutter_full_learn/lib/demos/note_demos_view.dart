import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NotesDemos extends StatelessWidget {
  const NotesDemos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boldLoginText = "Create Your First Note";

    return Scaffold(
      backgroundColor: AppColours.aliceBlue,
      appBar: AppBar(),
      body: Padding(
        padding: (AppPadding.horizontalPadding),
        child: Column(
          children: [
            //İmage
            ImageWidget(name: ImageItems().kirmizi_ejder_logo),
            //BoldText
            Text(
              boldLoginText,
              style: const TextStyle(
                color: AppColours.black,
                fontWeight: FontWeight.w900,
              ),
            ),
            //Text
            const Padding(
              padding: AppPadding.verticalPadding,
              child: _SubTitleWidgets(
                  title:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                      " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ),

            //Button
            ElevatedButton(
              onPressed: () {},
              child: Text("Create A Note"),
            ),
            //TextButton
            TextButton(
              onPressed: () {},
              child: Text("Import Notes"),
            ),
          ],
        ),
      ),
    );
  }
}

class _SubTitleWidgets extends StatelessWidget {
  const _SubTitleWidgets({
    Key? key,
    this.textAlign = TextAlign.center,
    required this.title,
  }) : super(key: key);
  final TextAlign? textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style:
          const TextStyle(fontWeight: FontWeight.w400, color: AppColours.black),
    );
  }
}

class AppPadding {
  static const horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class AppColours {
  static const Color aliceBlue = Color(0xFFeff7fe);
  static const Color romanSilver = Color(0xff878c95);
  static const Color cyanAzure = Color(0xff518ab4);
  static const Color red = Color.fromARGB(255, 255, 0, 0);

  static const Color black = Color.fromARGB(255, 0, 0, 0);
}
