import 'package:flutter/material.dart';

class SingleChat extends StatefulWidget {
  final String userName;
  // final String userId;

  SingleChat(this.userName);

  @override
  _SingleChatState createState() => _SingleChatState(userName);
}

class _SingleChatState extends State<SingleChat> {
  String userName;
  _SingleChatState(this.userName);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Row(
          children: <Widget>[
            new CircleAvatar(
              child: new FlutterLogo(),
            ),
            new SizedBox(
              width: 10.0,
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(userName),
                new Text(
                  'online',
                  style: new TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: new Container(
        child: new ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return new Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.transparent,
              child: new Container(
                padding: const EdgeInsets.all(8.0),
                decoration: new BoxDecoration(
                  color: Colors.black12,
                  borderRadius: new BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text('data'),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          '12/02/2019',
                          style: new TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        new Icon(
                          Icons.check_circle,
                          size: 18.0,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
