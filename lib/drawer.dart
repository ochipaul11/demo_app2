import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: const <Widget>[
          // DrawerHeader(
          //   child: Text('I am a header'),
          //  decoration: BoxDecoration(color: Colors.grey),
          //  ),
          UserAccountsDrawerHeader(
              accountName: Text('PaulOkeyo'),
              accountEmail: Text('paulokeyo@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                NetworkImage('https://unsplash.com/photos/EAvS-4KnGrk'),
              )),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Paul Okeyo"),
            subtitle: Text('Junior Developer'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text('Paulokeyo@hotmail.com'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Paul Okeyo"),
            subtitle: Text('Junior Developer'),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
