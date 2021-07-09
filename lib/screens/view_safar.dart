import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:safarprotibedon/constants/const.dart';
import 'package:safarprotibedon/model/safar_model.dart';

class ViewSafarDetails extends StatefulWidget {
  final Safar safar; //if you have multiple values add here
  ViewSafarDetails(this.safar, {Key? key})
      : super(key: key); //add also..example this.abc,this...

  @override
  State<StatefulWidget> createState() => _ViewSafarDetails();
}

class _ViewSafarDetails extends State<ViewSafarDetails> {
  @override
  Widget build(BuildContext context) {
    String formattedDate =
        DateFormat('dd-MM-yyyy').format(widget.safar.safarDate);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              Text(Cons.safarProtibedon),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("সফরকারী : "),
                  Text("মুহাম্মাদ বদরুল আমীন "),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 500.0,
            child: Column(
              children: [
                // branch info
                Card(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                              Cons.branchInfo,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            )),
                          ),
                          color: Colors.amberAccent,
                        ),
                        SizedBox(height: 8.0),
                        Text(widget.safar.branchName.toString()),
                        Text(widget.safar.safarType.toString()),
                        Text(formattedDate),
                        Text(widget.safar.branchPresidentName.toString()),
                      ],
                    ),
                  ),
                ),

                // org info
                Card(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                              Cons.orgInfo,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            )),
                          ),
                          color: Colors.amberAccent,
                        ),
                        buildRow(
                          Cons.totalpresent,
                          widget.safar.totalpresent!.toString(),
                        ),
                        buildRow(
                          Cons.sodossoKormiMuballigProttashi,
                          widget.safar.sodossoKormiMuballigProttashi.toString(),
                        ),
                        buildRow(
                          Cons.thanaDayittoshil,
                          widget.safar.thanaDayittoshil.toString(),
                        ),
                        buildRow(
                          Cons.jillaDayittoshil,
                          widget.safar.jillaDayittoshil.toString(),
                        ),
                        buildRow(
                          Cons.diniShongothon,
                          widget.safar.diniShongothon.toString(),
                        ),
                        buildRow(
                          Cons.islamiAndolan,
                          widget.safar.islamiAndolan.toString(),
                        ),
                        buildRow(
                          Cons.otherPeople,
                          widget.safar.otherPeople.toString(),
                        ),
                      ],
                    ),
                  ),
                ),



                // manpower info
                Card(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                                  Cons.manpowerInfo,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                )),
                          ),
                          color: Colors.amberAccent,
                        ),
                        buildRow(
                          Cons.totalpresent,
                          widget.safar.totalpresent!.toString(),
                        ),
                        buildRow(
                          Cons.sodossoKormiMuballigProttashi,
                          widget.safar.sodossoKormiMuballigProttashi.toString(),
                        ),
                        buildRow(
                          Cons.thanaDayittoshil,
                          widget.safar.thanaDayittoshil.toString(),
                        ),
                        buildRow(
                          Cons.jillaDayittoshil,
                          widget.safar.jillaDayittoshil.toString(),
                        ),
                        buildRow(
                          Cons.diniShongothon,
                          widget.safar.diniShongothon.toString(),
                        ),
                        buildRow(
                          Cons.islamiAndolan,
                          widget.safar.islamiAndolan.toString(),
                        ),
                        buildRow(
                          Cons.otherPeople,
                          widget.safar.otherPeople.toString(),
                        ),
                      ],
                    ),
                  ),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildRow(String s1, String s2) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(s1),
                  ),
                ), /*color: Colors.white10*/
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(s2 == "" ? "0" : s2),
                  ),
                ), /*color: Colors.black12*/
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
