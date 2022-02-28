import 'dart:convert';

import 'package:demo_app2/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../widgets/drawer.dart';
import 'login_page.dart';

class HomePageSB extends StatefulWidget {
  const HomePageSB({Key? key}) : super(key: key);
  static const String routeName = "/homeSB";

  @override
  State<HomePageSB> createState() => _HomePageSBState();
}

class _HomePageSBState extends State<HomePageSB> {
  // var myText = "Change My Name";
  // TextEditingController _nameController = TextEditingController();

  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos/');

  var data;

  Stream<List<String>> getStream(){
    var data = Stream<List<String>>.fromIterable(
        [List<String>.generate(20, (index) => "Item $index")]);
    return data;
  }

//Future used for performing asynchronous tasks

  Future fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    return data;
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
      body: StreamBuilder(
        stream: getStream(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(
                  child: Text("Some Error occured"),
                );
              }
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]),
                    //        leading: Image.network(data[index]["thumbnailUrl"]),
                  );
                },
                itemCount: data.length,
              );
            case ConnectionState.none:
              return Center(
                child: Text("Fetch Something"),
              );
          }
        },
      ),
      //data != null
      //     ? ListView.builder(itemBuilder:
      //   (context,index){
      //       return ListTile(
      //         title: Text(data[index]["title"]),
      //         subtitle: Text("ID: ${data[index]["id"]}"),
      // //        leading: Image.network(data[index]["thumbnailUrl"]),
      //       );
      //   },
      //   itemCount: data.length,)
      //     : Center(
      //   child: CircularProgressIndicator(),
      // ),
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
