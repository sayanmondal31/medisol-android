import 'package:flutter/material.dart';



class CutsPage extends StatelessWidget {
  static const String id = 'cutspage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cuts'),
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
                style: TextStyle(color: Colors.grey, fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: AssetImage('images/Cuts/step1.jpg'),
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
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: AssetImage('images/Cuts/step2.jpg'),
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
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: AssetImage('images/Cuts/step3.jpg'),
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
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: AssetImage('images/Cuts/step4.jpg'),
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
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: AssetImage('images/Cuts/step5.jpg'),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
