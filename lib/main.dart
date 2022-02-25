import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.brown),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change My Name";
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/pic1.jpg',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(myText,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter some text',
                          labelText: "Name"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.
    );
  }
}
