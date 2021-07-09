import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:safarprotibedon/constants/const.dart';
import 'package:safarprotibedon/model/safar_model.dart';
import 'package:safarprotibedon/screens/view_safar.dart';

class ViewSafarList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ViewSafarListState();
  }
}

class _ViewSafarListState extends State<ViewSafarList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Safar List"),
        ),
        body: Center(
          child: Container(
            width: 500.0,
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection(Cons.col_safar)
                  .snapshots(),
              builder: buildUserList,
            ),
          ),
        ));
  }

  Widget buildUserList(
      BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.hasData) {
      return GridView.builder(

        itemCount: snapshot.data!.docs.length,
        /*snapshot.data.documents.length,*/
        itemBuilder: (context, index) {
          DocumentSnapshot safarDoc = snapshot.data!.docs[index];
          List<QueryDocumentSnapshot> safarList = snapshot.data!.docs ;
          Safar safar = Safar.fromMap(safarDoc.data()!);

          String dayName = DateFormat.EEEE('en_US').format(safar.safarDate);
          String formattedDate =
              DateFormat('dd-MM-yyyy').format(safar.safarDate);

          return InkWell(
            onTap: () => showFullReport(context,safarList,index),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // branch name, safar type, safar date, who safared,
                    Text(safar.branchName.toString()),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(safar.safarType.toString()),
                    SizedBox(
                      width: 10.0,
                    ),

                    Text(formattedDate),
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 150.0,
          childAspectRatio: 1,
          crossAxisCount: 2,
        ),
      );
    } else if (snapshot.connectionState == ConnectionState.done &&
        !snapshot.hasData) {
      // Handle no data
      return Center(
        child: Text("No users found."),
      );
    } else {
      // Still loading
      return Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          CircularProgressIndicator(),
        ],
      );
    }
  }

  showFullReport(BuildContext context, List<QueryDocumentSnapshot> safarList, int index ) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => ViewSafarScreen( safar: safar),
    //   ),
    // );

    DocumentSnapshot safarDoc = safarList[index];
    final safar = Safar.fromMap(safarDoc.data()!);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ViewSafarDetails(safar)));
  }
}


