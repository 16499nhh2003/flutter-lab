import 'package:app/products.dart';
import 'package:app/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ex2 extends StatefulWidget {
  const Ex2({Key? key}) : super(key: key);

  @override
  State<Ex2> createState() => _Ex2State();
}

class _Ex2State extends State<Ex2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview'),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/$index.jpg",
                  ),
                ),
                title: Text(users[index]["fullName"].toString()),
                subtitle: Text(users[index]["jobTitle"].toString()),
                trailing: Icon(
                  Icons.more_vert,
                ),
                onTap: () {
                  final snackBar = SnackBar(
                    content:
                        Text("You've clicked on  ${users[index]["fullName"]}"),
                    action: SnackBarAction(
                      label: 'Dismiss',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              )),
          separatorBuilder: (context, int index) => const Divider(),
          itemCount: users.length),
    );
  }
}
