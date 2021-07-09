import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safarprotibedon/model/safar_model.dart';
import 'package:safarprotibedon/screens/add_safar.dart';
import 'package:safarprotibedon/screens/home_page.dart';
import 'package:safarprotibedon/screens/sign_in.dart';
import 'package:safarprotibedon/screens/sign_up.dart';
import 'package:safarprotibedon/screens/view_safar.dart';
import 'package:safarprotibedon/screens/view_safar_list.dart';
import 'package:safarprotibedon/services/authentication_service.dart';

import 'constants/const.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(create: (_) => AuthenticationService((FirebaseAuth.instance))),
        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authStateChanes,
          initialData: null,
        )
      ]

,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Cons.mainPage,
        routes: {
          Cons.mainPage: (context) => AuthenticationWrapper(),
          Cons.homePage: (context) => HomePage(),
          Cons.signInScreen: (context) => SignInPage(),
          Cons.signUpScreen: (context) => SignUpScreen(),
          Cons.addSafarScreen: (context) => AddSafar(),
          Cons.viewSafarList: (context) => ViewSafarList(),
        },
        theme: ThemeData(
          fontFamily: Cons.defaultFont,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();
    if (firebaseUser != null) {
      return HomePage();
    }

    return SignInPage();
  }
}
