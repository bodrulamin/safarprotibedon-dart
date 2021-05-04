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
  var _dateC = TextEditingController();
  var _locationC = TextEditingController();
  var _branchPresidentNameC = TextEditingController();
  var _selectedSafarType;

  double defaultPadding = 8.0;

  var selectedSalutation;

  Color getColorRedAmber(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.amber;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Safar"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Container(
              width: 500.0,
              child: Column(
                children: <Widget>[
                  // branchinfos
                  GetCard(cardText: Cons.branchInfo),
                  getBranchInfo(),

                  // org Info
                  GetCard(cardText: Cons.orgInfo),
                  getOrgInfo(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      getColorRedAmber)),
                          onPressed: () {},
                          child: Text('Cancel'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBranchInfo() {
    return Column(
      children: [
        /////////////////////////////Branch Name
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
            validator: isEmpty,
          ),
        ),

        //////////////////////////////////// Safar Date
        Padding(
          padding: EdgeInsets.fromLTRB(
              defaultPadding, defaultPadding, defaultPadding, defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _dateC,
            onTap: () {
              DateTime now = DateTime.now();

              DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                minTime: DateTime(now.year - 1, 1, 1),
                maxTime: DateTime(now.year, 12, 31),
                onChanged: (date) {
                  // print('change $date');
                },
                onConfirm: (date) {
                  String dayName = DateFormat.EEEE('en_US').format(date);
                  String formattedDate = DateFormat('dd-MM-yyyy').format(date);
                  _dateC.text = formattedDate + " " + dayName;
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

        /////////////////////////////////// Location
        Padding(
          padding: EdgeInsets.fromLTRB(
              defaultPadding, defaultPadding, defaultPadding, defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _locationC,
            decoration: InputDecoration(
              labelText: Cons.location,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(
              defaultPadding, defaultPadding, defaultPadding, defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _branchPresidentNameC,
            decoration: InputDecoration(
              labelText: Cons.branchPresidentName,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),

        Builder(builder: safarTypeBuilder),

        DropdownButtonHideUnderline(
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: Cons.safarType,
              border: const OutlineInputBorder(),
            ),


            onChanged: (salutation) =>
                setState(() => selectedSalutation = salutation),
            validator: isEmpty,
            items:
                ['MR.', 'MS.'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  String? isEmpty(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  Widget safarTypeBuilder(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          defaultPadding, defaultPadding, defaultPadding, defaultPadding),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: Cons.safarType,
          border: const OutlineInputBorder(),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            isDense: true,
            // Reduces the dropdowns height by +/- 50%
            icon: Icon(Icons.keyboard_arrow_down),
            value: _selectedSafarType,
            items: Cons.safarTypes.map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (selectedItem) => setState(
              () => _selectedSafarType = selectedItem.toString(),
            ),
          ),
        ),
      ),
    );
  }

  Widget getOrgInfo() {
    return Container();
  }
}

class GetCard extends StatelessWidget {
  const GetCard({
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
