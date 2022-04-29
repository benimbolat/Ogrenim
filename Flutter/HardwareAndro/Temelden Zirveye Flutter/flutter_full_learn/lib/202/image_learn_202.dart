// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagePaths.instagram_logo.toWidget(),
    );
  }
}

enum ImagePaths {
  instagram_logo,
  kirmizi_ejder_logo,
  renkli_insan_figurleri_logo,
}

extension ImagePathExtension on ImagePaths {
  String path() {
    return 'assets/Images/png/$name.png';
  }

  Widget toWidget() {
    return Image.asset(path());
  }
}
