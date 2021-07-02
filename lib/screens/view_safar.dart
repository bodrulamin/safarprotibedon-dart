import 'package:flutter/material.dart';

class ViewSafarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ViewSafarScreenState();
  }
}

class _ViewSafarScreenState extends State<ViewSafarScreen> {
  @override
  Widget build(BuildContext context) {

    final routes = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    if (routes != null) {staffModelObj = routes["staff"];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("view_safar"),
      ),
      body: Center(
        child: Text("view_safar"),
      ),
    );
  }
}
