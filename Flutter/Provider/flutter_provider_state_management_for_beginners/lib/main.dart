import 'package:flutter/material.dart';
import 'package:flutter_provider_state_management_for_beginners/features/tabs/shoppi_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ShoppiTabView();
  }
}
