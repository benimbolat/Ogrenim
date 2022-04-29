import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({Key? key, this.size}) : super(key: key);
  final double? size;
  final _deafultSize = 300.0;

  @override
  Widget build(BuildContext context) {
    return SpinKitSpinningLines(
      itemCount: 10,
      color: Colors.red,
      size: size ?? _deafultSize,
    );
  }
}
