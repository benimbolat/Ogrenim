import 'package:flutter/material.dart';

import '../../../features/products/model/product_model.dart';

class ShopCard extends StatelessWidget {
  final Product product;

  const ShopCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: const Icon(Icons.shopping_basket),
          title: Image.network(product.image),
          subtitle: Wrap(
            children: [
              const Spacer(
                flex: 10,
              ),
              Text(product.name),
              Text("$product.price"),
            ],
          )),
    );
  }
}
