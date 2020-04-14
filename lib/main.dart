import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      home: ProfileApp(),
    );
  }
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var divHeight = MediaQuery.of(context).size.height;
    var divWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'images/MrCK.jpg',
              ),
            ),
            Text(
              'Mr CK',
              style: TextStyle(
                color: Colors.white,
                height: 2,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Colors.teal.shade100,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceSansPro',
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+91 7403 1135 16',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'rashidmrck@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
