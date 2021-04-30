import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safarprotibedon/constants/const.dart';
import 'package:safarprotibedon/services/authentication_service.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const defaultPadding = 8.0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
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
                      controller: _emailController
                        ..text = "bodrulaminiu@gmail.com",
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
                      controller: _passwordController..text = "bodrul",
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
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthenticationService>().signIn(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim());
                      }
                    },
                    child: Text('Login'),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("New Here?"),
                      SizedBox(width: 5.0),
                      TextButton(onPressed: () async {
                        await Navigator.of(context)
                            .pushNamed(Cons.signUpScreen);
                      }, child: Text('Sign Up')),

                    ],
                  )
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
