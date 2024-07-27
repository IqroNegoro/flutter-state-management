import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providerManagement/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart Page")),
      body: Consumer<CartProvider>(
        builder: (context, value, _) => ListView.builder(
          itemCount: value.carts.length,
          itemBuilder: (context, index) => Row(
            children: [
              Image(image: NetworkImage(value.carts[index].image), width: 100),
              Text(value.carts[index].title),
              Spacer(
                flex: 1,
              ),
              Text('x${value.carts[index].qty.toString()}'),
            ],
          ),
        ),
      ),
    );
  }
}
