import 'package:flutter/material.dart';

import 'catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Card(
        elevation: 8.0,
        child: ListTile(
          leading: Container(
              height: 42, width: 64, child: Image.asset("${item.image}")),
          title: Text(item.name.toString()),
          subtitle: Text(item.desc.toString()),
          trailing: Text(
            "\$${item.price.toString()}",
            textScaleFactor: 1.3,
          ),
        ),
      ),
    );
  }
}
