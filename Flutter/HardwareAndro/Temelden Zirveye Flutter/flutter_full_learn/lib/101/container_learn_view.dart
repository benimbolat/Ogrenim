import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          Container(
            height: 50,
            child: Text('a' * 8),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            decoration: ProjectDecorationContainerDecoration(),
          )
        ],
      ),
    );
  }
}

class ProjectDecorationContainerDecoration extends BoxDecoration {
  ProjectDecorationContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              colors: [Colors.red, Colors.black],
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                offset: Offset(0.1, 1),
              ),
            ],
            border: Border.all(width: 10, color: Colors.white12));
}
