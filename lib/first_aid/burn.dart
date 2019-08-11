import 'package:flutter/material.dart';

class BurnPage extends StatelessWidget {
  static const String id = 'burnpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burn'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(bottom: 100),
              child: Card(
                elevation: 10.0,
                child:Image(
                  image: NetworkImage('https://www.justonenorfolk.nhs.uk/media/1677/burn-gif.gif?width=355&height=380'),
                  // fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
