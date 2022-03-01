import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_8_hours/widgets/catalog.dart';
import 'package:flutter_8_hours/widgets/drawar.dart';
import 'package:flutter_8_hours/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    final catlogJson =
        await rootBundle.loadString('assets/files/catalogue.json');
    final decodeData = jsonDecode(catlogJson);
    print(catlogJson);
    var productData = decodeData['products'];
    List<Item> list = List.from(productData)
        .map<Item>((item) => Item.fromMap(productData))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
          itemCount: CatalogModel.items.length),
      drawer: MyDrawar(),
    );
  }
}
