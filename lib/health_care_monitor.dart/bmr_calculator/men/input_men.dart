import 'package:flutter/material.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/men/imperial/imperial_input.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/men/info.dart';
import 'package:medisol/health_care_monitor.dart/bmr_calculator/men/metric/metric_input.dart';

class MenInput extends StatefulWidget {
  @override
  _MenInputState createState() => _MenInputState();
}

class _MenInputState extends State<MenInput> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Men's BMR "),
        ),
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.teal,
            indicatorColor: Colors.teal,
            unselectedLabelColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                text: 'Metric',
              ),
              Tab(
                text: 'Imperial',
              ),
              Tab(
                text: 'Info',
                icon: Icon(Icons.info),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            BmrCalPageMetric(),
            BmrCalPageImperial(),
            InfoPage()
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
