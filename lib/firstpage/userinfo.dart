import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flash_chat/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;
FirebaseUser existingUser;
final _auth = FirebaseAuth.instance;
class UserINfo extends StatefulWidget {
  static const String id = 'userinfo';
  @override
  _UserINfoState createState() => _UserINfoState();
}

class _UserINfoState extends State<UserINfo> {
  final messegeTextController = TextEditingController();

  
  
  
  String messege;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    final user = await _auth.currentUser();
    if (user != null) {
      existingUser = user;
    }
  }

  // void getMesseges()async{
  //   final messegestext = await _firestore.collectionGroup('messeges').getDocuments();
  //   for(var messegeread in messegestext.documents){
  //     print(messegeread.data);
  //   }
  // }

  void messegeStream() async {
    await for (var snapshot
        in _firestore.collectionGroup('messeges').snapshots()) {
      for (var messegeread in snapshot.documents) {
        print(messegeread.data);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          UserStream(),
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                //Implement logout functionality
                messegeStream();
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
            Container(
              // decoration: kMessageContainerDecoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  UserStream()
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return StreamBuilder<QuerySnapshot>(
              stream: _firestore.collectionGroup('userdetails').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final messeges = snapshot.data.documents;
                List<MessegeBubble> messegeBubbles = [];
                for (var messege in messeges) {
                  final messegeAge = messege.data['age'];
                  final messegeSender = messege.data['sender'];
                  final currentUser = existingUser.email;
                  if(existingUser == messegeSender){

                  }
                  final messegeBubble = MessegeBubble(
                    text: messegeAge,
                    sender: messegeSender,
                    isMe: currentUser==messegeSender,
                  );

                  // messegeBubbles.add(messegeBubble);
                }
                return Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    children: messegeBubbles,
                  ),
                );
              },
            );
  }
}

class MessegeBubble extends StatelessWidget {
  MessegeBubble({this.text, this.sender,this.isMe});
  String text;
  String sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(sender,style: TextStyle(fontSize: 15.0,color: Colors.black54),),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
              child: Text(
                text ,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
