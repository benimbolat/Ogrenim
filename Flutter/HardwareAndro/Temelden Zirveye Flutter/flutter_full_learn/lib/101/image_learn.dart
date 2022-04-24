import 'package:flutter/material.dart';

class ImageLearnViewOne extends StatelessWidget {
  const ImageLearnViewOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/tr/archive/9/9e/20200316220122%21Saglikbakanligi_logo.png",
              errorBuilder: (context, error, stackTrace) =>
                  const CircularProgressIndicator(),
            ),
          ),
          SizedBox(
            child: ImageWidget(name: ImageItems().kirmizi_ejder_logo),
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String renkliInsanFigurleri = "renkli_insan_figurleri_logo";
  final String kirmizi_ejder_logo = "kirmizi_ejder_logo";
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_imageNamePath, fit: BoxFit.fill);
  }

  String get _imageNamePath => "assets/Images/png/$name.png";
}
