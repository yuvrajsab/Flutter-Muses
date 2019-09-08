import 'package:flutter/material.dart';

import 'chat_screens/all_contacts.dart';
import 'tab_screens/camera.dart';
import 'tab_screens/chats_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Muses"),
          actions: <Widget>[
            new IconButton(
              tooltip: "Search",
              icon: new Icon(Icons.search),
              onPressed: () => {},
            ),
            new PopupMenuButton<int>(
              tooltip: "Menu",
              icon: new Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) => [
                new PopupMenuItem(
                  child: new Text('Settings'),
                  value: 1,
                ),
                new PopupMenuItem(
                  child: new Text('Network'),
                  value: 2,
                ),
              ],
            )
          ],
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.camera),
              ),
              new Tab(child: new Text("CHATS")),
              new Tab(child: new Text("STATUS")),
              new Tab(child: new Text("CALLS")),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Camera(),
            new ChatsList(),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () => Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new AllContacts()),
          ),
        ),
      ),
    );
  }
}
