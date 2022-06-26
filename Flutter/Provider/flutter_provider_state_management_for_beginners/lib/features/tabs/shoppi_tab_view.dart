import 'package:flutter/material.dart';

class ShoppiTabView extends StatelessWidget {
  const ShoppiTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: TabBar(tabs: [
              Tab(icon: Icon(Icons.abc_outlined)),
              Tab(icon: Icon(Icons.abc_outlined)),
            ]),
          ),
        ),
      ),
    );
  }
}
