import 'package:app/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ex4 extends StatefulWidget {
  const Ex4({Key? key}) : super(key: key);

  @override
  State<Ex4> createState() => _Ex4State();
}

class _Ex4State extends State<Ex4> {
  late List<bool> isSelected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSelected = List<bool>.filled(products.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: Text('Listview'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          if (index < products.length) {
            return InkWell(
              onTap: () {
                print('Tapped on ${products[index]["Product Name"]}');
              },
              onLongPress: () {
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              child: new Card(
                color: isSelected[index] ? Colors.blue.withOpacity(0.5) : null,
                child: new GridTile(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${products[index]["Product Name"]}",
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "${products[index]["Price"]}",
                          style: TextStyle(color: Colors.amber, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
