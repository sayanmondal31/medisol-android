import 'package:flutter/material.dart';

class DrawerBox extends StatelessWidget {
  const DrawerBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(""),
            accountEmail: new Text(''),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: new CircleAvatar(
                backgroundColor: Colors.cyan,
                child: new Text(""),
              ),
            ),
          ),
          //      new ListTile(
          //    title: new Text("home"),
          //    trailing: new Icon(Icons.home),
          //    onTap: (){
          //      Navigator.of(context).pop();
          //      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new NewPage("home")));
          //    },
          //  ),

          new ListTile(
            title: new Text("Demo"),
            trailing: new Icon(Icons.account_balance_wallet),
            onTap: () {
              Navigator.of(context).pop();
              //  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new BalancePage("balance")));
            },
          ),
          new Divider(),
          new ListTile(
            title: new Text("Notification"),
            trailing: new Icon(Icons.notifications),
            onTap: () {
              Navigator.of(context).pop();
              //  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new NotificationPage("notification")));
            },
          ),
        
          new ListTile(
            title: new Text("Feedback"),
            trailing: new Icon(Icons.feedback),
            onTap: () {
              
              //  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new NotificationPage("notification")));
            },
          ),

          
          new ListTile(
              title: new Text("Log out "),
              trailing: new Icon(Icons.close),
              onLongPress: () {
                // prefix1.signOutGoogle();
                
              }),
        ],
      ),
    );
  }
}