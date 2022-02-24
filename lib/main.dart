import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.brown),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          color: Colors.teal,
          height: 100,
          width: 100,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            // DrawerHeader(
            //   child: Text('I am a header'),
            //  decoration: BoxDecoration(color: Colors.grey),
            //  ),
            UserAccountsDrawerHeader(
                accountName: Text('PaulOkeyo'),
                accountEmail: Text('paulokeyo@hotmail.com'),
        currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage('https://unsplash.com/photos/EAvS-4KnGrk'),
        )
            ),

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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.
    );
  }
}
