import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/constant.dart';

class BackPain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      'https://www.verywellfit.com/thmb/VWCSXoJIjwP_xnjXAZRZIjpK31Y=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/Verywell-20-4023748-SpinalTwist01-1729-5995b536845b340010c016cf.gif'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Supta Matsyendrasana/ Supine Spinal Twist',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'ic'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      'https://1.bp.blogspot.com/-CS2qFYQa5ZI/Waj7EtD0suI/AAAAAAAAAJc/27Ec87dFo_kkUkw567DsFMX7N67Yg-qLgCEwYBhgL/s1600/vrikshasana.gif'),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Vrikshasana/ Tree Pose',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'ic'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}