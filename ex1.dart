import 'package:app/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ex1 extends StatefulWidget {
  const Ex1({Key? key}) : super(key: key);

  @override
  State<Ex1> createState() => _Ex1State();
}

class _Ex1State extends State<Ex1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview'),
        ),
        body: _createListViewSeperated());
  }
}

Widget _createListViewSeperated() {
  return ListView.separated(
      itemBuilder: ((context, index) => ListTile(
            title: Text(products[index]["Product Name"].toString()),
            subtitle: Text(products[index]["Price"].toString()),
          )),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: products.length);
}

Widget _createListViewBuilder() {
  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: products.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(products[index]["Product Name"].toString()),
        subtitle: Text(products[index]["Price"].toString()),
      );
    },
  );
}

// [
//           for (var product in products)
//             ListTile(
//               title: Text(product["Product Name"].toString()),
//               subtitle: Text(
//                 product["Price"] != null
//                     ? "\$${product["Price"]}"
//                     : "Price not available",
//               ),
//             )
//         ],