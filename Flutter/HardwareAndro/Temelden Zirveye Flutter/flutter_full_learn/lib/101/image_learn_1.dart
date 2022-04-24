import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            child: PngImage(name: ImageItems().kirmiziEjderLogo),
          ),
          SizedBox(
            child: PngImage(name: ImageItems().renkliInsanFigurleri),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String kirmiziEjderLogo = "kirmizi_ejder_logo";
  final String renkliInsanFigurleri = "renkli_insan_figurleri_logo";
}

class PngImage extends StatelessWidget {
  final String? name;

  const PngImage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      nameWithPath,
      fit: BoxFit.fill,
    );
  }

  String get nameWithPath => "assets/Images/png/$name.png";
}
