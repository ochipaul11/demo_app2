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
      body: Container(
        color: Colors.amberAccent,
        height: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              width: 100,
              height: 100,
              color: Colors.grey,

            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: 100,
              height: 100,
              color: Colors.blue,

            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: 100,
              height: 100,
              color: Colors.black,

            ),
          ],
        )
      ),
    );
  }
}
