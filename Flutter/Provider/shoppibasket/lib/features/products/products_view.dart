import 'package:flutter/material.dart';

class ProductsView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [buildActionChipTotalMoney()],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 3 / 2,
            child: Card(
              child: ListTile(
                  leading: const Icon(Icons.shopping_basket),
                  title: Image.network("https://picsum.photos/200"),
                  subtitle: Wrap(
                    children: const [
                      Spacer(
                        flex: 10,
                      ),
                      Text("Name"),
                      Text("Money")
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}

ActionChip buildActionChipTotalMoney() {
  return ActionChip(
      avatar: const Icon(
        Icons.check,
        color: Colors.green,
      ),
      label: const Text("345 TL"),
      onPressed: () {});
}
