import 'package:flutter/material.dart';

class NoseBleeding extends StatelessWidget {
  static const String id = 'burnpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nose Bleeding'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Follow this steps,it will help you',
                style: TextStyle(color: Colors.black, fontSize: 38.0),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: AssetImage('images/Nose_bleeding/step1.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'Step 1',
              style: TextStyle(color: Colors.grey, fontSize: 50.0),
            )),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Image(
                image: AssetImage('images/Nose_bleeding/step2.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'Step 2',
              style: TextStyle(color: Colors.grey, fontSize: 50.0),
            )),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Image(
                image: AssetImage('images/Nose_bleeding/step3.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'Step 3',
              style: TextStyle(color: Colors.grey, fontSize: 50.0),
            )),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Image(
                image: AssetImage('images/Nose_bleeding/step4.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'Step 4',
              style: TextStyle(color: Colors.grey, fontSize: 50.0),
            )),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Image(
                image: AssetImage('images/Nose_bleeding/step5.jpg'),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
