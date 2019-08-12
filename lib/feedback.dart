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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            onSaved: (value){
              userfeed = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () async{
                _firestore.collection('feedback').add({
                  'userneed':userfeed,
                });
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Thank you')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}