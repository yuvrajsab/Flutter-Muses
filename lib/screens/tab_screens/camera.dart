import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';

import 'package:muses/Database.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  Database db = new Database();

  @override
  initState() {
    super.initState();
    // _getContacts();
  }

  void _getContacts() async {
    Iterable<Contact> contacts =
        await ContactsService.getContacts(withThumbnails: false);
    for (var item in contacts) {
      print(item.displayName);
      print(item.phones.first.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      future: db.fetchUsers(),
      builder: (context, snapshot) {
        var data = snapshot.data;

        if (snapshot.data == null) {
          return new Text('null');
        } else if (snapshot.hasError) {
          return new Text('error');
        } else {
          return new ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return new ListTile(
                title: new Text(data[index].toString()),
              );
            },
          );
        }
      },
    );
  }
}
