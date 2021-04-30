

import 'package:cloud_firestore/cloud_firestore.dart';
 import 'package:flutter/material.dart';
 import 'package:provider/provider.dart';
import 'package:safarprotibedon/services/authentication_service.dart';



class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpScreenState();
  }
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  var _emailController = TextEditingController();

  var _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const defaultPadding = 8.0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Center(
            child: Container(
              width: 500.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        defaultPadding, 20.0, defaultPadding, defaultPadding),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                      context.read<AuthenticationService>().signUp(email: _emailController.text.trim(), password: _passwordController.text.trim());
                      Navigator.of(context).pop();

                      }
                    },
                    child: Text('Sign Up'),
                  ),

                  //  GetUsersEmails(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GetUsersEmails extends StatefulWidget {
  @override
  _GetUsersEmailsState createState() => _GetUsersEmailsState();
}

class _GetUsersEmailsState extends State<GetUsersEmails> {
  final List<String> userList = [];

  @override
  Widget build(BuildContext context) {
    if (userList.length > 0) {
      return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: userListBuilder,
        itemCount: userList.length,
      );
    } else {
      FirebaseFirestore.instance
          .collection('users')
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          userList.add(doc['email']);

          print(doc['email']);
        });

        setState(() {});
      });
      return Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                width: 20.0,
              ),
              Text("Loading"),
            ]),
      );
    }
  }

  Widget userListBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text('${userList[index]}'),
    );
  }
}
