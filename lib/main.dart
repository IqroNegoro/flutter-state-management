import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providerManagement/cart.dart';
import 'package:state_management/providerManagement/main.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CartProvider(),
        child: const MaterialApp(home: ProviderUI()));
  }
}
