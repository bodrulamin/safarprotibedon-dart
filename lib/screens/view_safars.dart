import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:safarprotibedon/constants/const.dart';
import 'package:safarprotibedon/model/safar_model.dart';

class view_safars extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _view_safarsState();
  }
}

class _view_safarsState extends State<view_safars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Safar List"),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection(Cons.col_safar).snapshots(),
          builder: buildUserList,
        ));
  }

  Widget buildUserList(BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.hasData) {
      return ListView.builder(
        itemCount: snapshot.data!.docs.length,
        /*snapshot.data.documents.length,*/
        itemBuilder: (context, index) {
          DocumentSnapshot safarDoc = snapshot.data!.docs[index];
          final safar = Safar.fromMap(safarDoc.data()!);
          return Container(
            width: 500.0,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(safar.branchName.toString()),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(safar.safarType.toString()),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
           /*
           Branch name
           safar date
           safar type
           mehman, dayitto
           * */
        },
      );
    } else if (snapshot.connectionState == ConnectionState.done && !snapshot.hasData) {
      // Handle no data
      return Center(
        child: Text("No users found."),
      );
    } else {
      // Still loading
      return CircularProgressIndicator();
    }
  }
}
