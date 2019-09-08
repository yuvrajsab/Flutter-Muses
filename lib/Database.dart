import 'package:rethinkdb_dart/rethinkdb_dart.dart';

class Database {
  Rethinkdb r = new Rethinkdb();
  Connection conn;

  connect() async {
    try {
      conn = await r.connect(db: "mydb", host: "192.168.122.1", port: 28015);
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<List> fetchUsers() async {
    Connection conn =
        await r.connect(db: "mydb", host: "192.168.122.1", port: 28015);
    Cursor c = await r.table('users').run(conn);
    return await c.toList();
  }

  close() {
    conn.close();
  }
}
