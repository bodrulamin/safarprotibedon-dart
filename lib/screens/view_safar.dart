import 'package:flutter/material.dart';
import 'package:safarprotibedon/model/safar_model.dart';

class ViewSafarScreen extends StatelessWidget {
final Safar safar;
  ViewSafarScreen({required this.safar}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(safar.branchName.toString()),
      ),
      body: Center(
        child: Text(safar.safarType.toString()),
      ),
    );
  }
}

