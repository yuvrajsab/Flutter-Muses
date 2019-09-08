import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';

import 'single_chat.dart';

class AllContacts extends StatefulWidget {
  @override
  _AllContactsState createState() => _AllContactsState();
}

class _AllContactsState extends State<AllContacts> {
  ScrollController _arrowController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('All Contacts'),
        actions: <Widget>[
          new IconButton(
            tooltip: "Search",
            icon: new Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
      ),
      body: new DraggableScrollbar.semicircle(
        labelTextBuilder: (double offset) => Text("${offset ~/ 56}"),
        controller: _arrowController,
        child: new ListView.builder(
          controller: _arrowController,
          itemCount: 50,
          itemBuilder: (context, index) {
            return new ListTile(
              leading: new CircleAvatar(
                child: new FlutterLogo(),
              ),
              title: Text('Name'),
              onTap: () => Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new SingleChat('Name'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
