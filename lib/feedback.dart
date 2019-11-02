import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Firestore feedbackStore = Firestore();
final _firestore = Firestore.instance;
String userfeed;

// Create a Form widget.
class FeedbackForm extends StatefulWidget {
  @override
  FeedbackFormState createState() {
    return FeedbackFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class FeedbackFormState extends State<FeedbackForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Feedback')),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Image.asset('images/doctorlogo1.png'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    focusColor: Colors.green,
                    hintText: 'Feedback',
                    hintStyle:
                        TextStyle(fontFamily: 'pacifico', fontSize: 20.0)),
                onSaved: (value) {
                  userfeed = value;
                },
                // onSaved: (value){
                //   userfeed = value;
                // },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter text';
                  }
                  return null;
                },
                cursorColor: Colors.green,
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(left: 200,right: 50),
              child: RaisedButton(
                  onPressed: () async{
                    
                    _firestore.collection('feedback').add({
                      'userneed':userfeed,
                    });
                     if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('Thank you')));
                    }
                    },
                    child: Text('Submit',style: TextStyle(fontSize: 20.0,fontFamily: 'pacifico',letterSpacing: 2.0),),
                    color: Colors.lime,
                    ),
            )
                  
          ],
        ),
      ),
    );
  }
}

