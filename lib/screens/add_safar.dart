import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:safarprotibedon/constants/const.dart';

class AddSafar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddSafarState();
  }
}

class _AddSafarState extends State<AddSafar> {
  final _formKey = GlobalKey<FormState>();

  var _branchNameC = TextEditingController();
  var _branchPresidentNameC = TextEditingController();
  var _dateC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const defaultPadding = 8.0;

    String branchInfo = 'Branch Info';
    var orgInfo = "Ogranizational Info";
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Safar"),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Container(
            width: 500.0,
            child: Column(
              children: <Widget>[
                // branchinfos
                getCard(cardText: branchInfo),
                getBranchInfo(defaultPadding),

                getCard(cardText: orgInfo),
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(_branchNameC.text)));
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getBranchInfo(double defaultPadding) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              defaultPadding, defaultPadding, defaultPadding, defaultPadding),
          child: TextFormField(
            controller: _branchNameC,
            decoration: InputDecoration(
              labelText: Cons.branchName,
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
          padding: EdgeInsets.fromLTRB(
              defaultPadding, defaultPadding, defaultPadding, defaultPadding),
          child: TextFormField(
            controller: _branchPresidentNameC,
            decoration: InputDecoration(
              labelText: Cons.branchPresidentName,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              defaultPadding, defaultPadding, defaultPadding, defaultPadding),
          child: TextFormField(
            controller: _dateC,
            onTap: () {
              DateTime now = DateTime.now();

              DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                minTime: DateTime(now.year, 1, 1),
                maxTime: DateTime(now.year+1, 12, 31),
                onChanged: (date) {
                  // print('change $date');
                },
                onConfirm: (date) {
                  String dayName = DateFormat.EEEE('en_US').format(date);
                  String formattedDate = DateFormat('dd-MM-yyyy').format(date);
                  _dateC.text = formattedDate+" "+dayName;
                },
                currentTime: DateTime.now(),
                locale: LocaleType.bn,
              );
            },
            decoration: InputDecoration(
              labelText: Cons.safarDate,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),




      ],
    );
  }
}

class getCard extends StatelessWidget {
  const getCard({
    Key? key,
    required this.cardText,
  }) : super(key: key);

  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(cardText),
          ),
        ),
      ],
    );
  }
}
