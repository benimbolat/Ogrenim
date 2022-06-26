import 'package:flutter/material.dart';

class ShoppiTabView extends StatelessWidget {
  const ShoppiTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: buildButtomAppBar(),
          body: TabBarView(
            children: [
              //  Products(),
              Container(color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}

BottomAppBar buildButtomAppBar() {
  return const BottomAppBar(
      child: TabBar(tabs: [
    Tab(icon: Icon(Icons.abc_outlined)),
    Tab(icon: Icon(Icons.abc_outlined)),
  ]));
}
