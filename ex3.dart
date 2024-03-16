import 'package:flutter/material.dart';
import 'package:app/users.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ex3 extends StatefulWidget {
  const Ex3({Key? key}) : super(key: key);

  @override
  State<Ex3> createState() => _Ex3State();
}

class _Ex3State extends State<Ex3> {
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
                          leading: Icon(Icons.heart_broken),
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
