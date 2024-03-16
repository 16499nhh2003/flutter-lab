import 'package:app/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ex5 extends StatefulWidget {
  const Ex5({Key? key}) : super(key: key);

  @override
  State<Ex5> createState() => _Ex5State();
}

class _Ex5State extends State<Ex5> {
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
                trailing: PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        child: ListTile(
                          leading: Icon(Icons.heart_broken_sharp),
                          title: Text('Add to favorite'),
                        ),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: Icon(Icons.block),
                          title: Text('Block this user'),
                        ),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: Icon(Icons.delete),
                          title: Text('Delete this user'),
                        ),
                        value: 3,
                      ),
                    ];
                  },
                  onSelected: (value) {
                    switch (value) {
                      case 1:
                        break;
                      case 2:
                        break;
                      case 3:
                        break;
                    }
                  },
                ),
              )),
          separatorBuilder: (context, int index) => const Divider(),
          itemCount: users.length),
    );
  }
}
