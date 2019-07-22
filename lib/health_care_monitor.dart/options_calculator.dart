import 'package:flutter/material.dart';

class ClaculatorTabs extends StatefulWidget {
  @override
  _ClaculatorTabsState createState() => _ClaculatorTabsState();
}

class _ClaculatorTabsState extends State<ClaculatorTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 270),
                child: Card(
                    elevation: 10,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    // padding: EdgeInsets.symmetric(vertical: 80.0),
                    color: Colors.amber,
                    // duration: Duration(seconds: 1),
                    child: Center(child: Text('BMI calculator',style: TextStyle(),)),
                  ),
              ),
            ),
          SizedBox(
            height: 10,
          ),
           GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 270),
                child: Card(
                    elevation: 10,
                    
                    // padding: EdgeInsets.symmetric(vertical: 80.0),
                    color: Colors.amber,
                    // duration: Duration(seconds: 1),
                    child: Center(child: Text('BMI calculator',style: TextStyle(),)),
                  ),
              ),
            ),
          
          
          SizedBox(height: 10.0,),
          FlatButton(
            onPressed: (){},
                      child: AnimatedContainer(
              duration: Duration(seconds: 1),
              child: Text('Fat calculator'),
            ),
          ),
          FlatButton(
            onPressed: (){},
                      child: AnimatedContainer(
              duration: Duration(seconds: 1),
              child: Text('BMR calculator'),
            ),
          ),
        ],
      ),
    );
  }
}
