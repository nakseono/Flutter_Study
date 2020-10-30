import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maple',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen, // Grade #1
      appBar: AppBar(
        // Grade #2
        title: Text('Maple'),
        backgroundColor: Colors.brown[800],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        // Grade #3
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kimnakseo.jpeg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '김낙서',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '232',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '아크메이지(썬, 콜)',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '유니온 7118',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '#메린이 #응애 #나 #아기서노',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
