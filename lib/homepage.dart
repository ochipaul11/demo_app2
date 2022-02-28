import 'dart:convert';

import 'package:demo_app2/login_page.dart';
import 'package:demo_app2/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myText = "Change My Name";
  // TextEditingController _nameController = TextEditingController();

  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos/');

  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
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
        title: Text("Awesome Aplication"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Constants.prefs?.setBool("loggedIn", false);
              //  Navigator.pop(context);
                Navigator.pushReplacementNamed(context, Loginpage.routeName);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: data != null
          ? ListView.builder(itemBuilder:
        (context,index){
            return ListTile(
              title: Text(data[index]["title"]),
              subtitle: Text("ID: ${data[index]["id"]}"),
      //        leading: Image.network(data[index]["thumbnailUrl"]),
            );
        },
        itemCount: data.length,)
          : Center(
        child: CircularProgressIndicator(),
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          //setState(() {});
        },
        child: Icon(Icons.send),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.
    );
  }
}
