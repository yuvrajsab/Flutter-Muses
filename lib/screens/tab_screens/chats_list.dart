import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:muses/screens/chat_screens/single_chat.dart';

class ChatsList extends StatefulWidget {
  @override
  _ChatsListState createState() => _ChatsListState();
}

class _ChatsListState extends State<ChatsList> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView(
        children: <Widget>[
          new Slidable(
            actionPane: new SlidableStrechActionPane(),
            child: new ListTile(
              leading: new CircleAvatar(
                child: new FlutterLogo(),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text('Name'),
                  new Text('Date'),
                ],
              ),
              subtitle: new Text('message'),
              onTap: () => {},
            ),
            actions: <Widget>[
              IconSlideAction(
                caption: 'Archive',
                color: Colors.blue,
                icon: Icons.archive,
                onTap: () => {},
              ),
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'More',
                color: Colors.black45,
                icon: Icons.more_horiz,
                closeOnTap: false,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => new Container(
                      child: new ListView(
                        children: <Widget>[
                          new ListTile(
                            leading: new Icon(Icons.contacts),
                            title: new Text('Contact Info'),
                            onTap: null,
                          ),
                          new ListTile(
                            leading: new Icon(Icons.delete),
                            title: new Text('Delete Chat'),
                            onTap: () => {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: new FlutterLogo(),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text('Name'),
                new Text('Date'),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text('message'),
                new Text('read'),
              ],
            ),
            onTap: () => Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => new SingleChat('Name'),
              ),
            ),
          ),
          new Divider(),
        ],
      ),
    );
  }
}
