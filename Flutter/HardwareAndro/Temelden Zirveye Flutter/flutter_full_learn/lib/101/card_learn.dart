import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/color_learn.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: const [
            _CustomCard(
              childVer: SizedBox(
                height: 100,
                width: 400,
                child: Center(
                  child: Text("Enes"),
                ),
              ),
            ),
            _CustomCard(
              childVer: SizedBox(
                height: 100,
                width: 400,
                child: Center(
                  child: Text("Enes"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//*
class ProjectMargin {
  static const projectMarginAll10 = EdgeInsets.all(10);
  static const projectMarginVertical = EdgeInsets.symmetric(vertical: 10);
  static const projectMarginHorizontal = EdgeInsets.symmetric(horizontal: 10);
}

//* Card için Class oluşturduk. OOP VBTarzı.
class _CustomCard extends StatelessWidget {
  final Widget childVer;

  const _CustomCard({Key? key, required this.childVer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.projectMarginAll10,
      color: ColorsItems.porchase,
      child: childVer,
      shape: const StadiumBorder(),
    );
  }
}
