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
  double defaultPadding = 8.0;

// Branch info variables
  var _branchNameC = TextEditingController();
  var _dateC = TextEditingController();
  var _locationC = TextEditingController();
  var _branchPresidentNameC = TextEditingController();
  var _selectedSafarType;

  // Org info variables

  var _totalPresent = TextEditingController();
  var _sodossoKormiMuballigProttashi = TextEditingController();
  var _thanaDayittoshil = TextEditingController();
  var _jillaDayittoshil = TextEditingController();
  var _diniShongothon = TextEditingController();
  var _islamiAndolan = TextEditingController();
  var _otherPeople = TextEditingController();
  var _activeJila = TextEditingController();
  var _activeThana = TextEditingController();
  var _inactiveCause = TextEditingController();
  var _monthlyReportToCenter = TextEditingController();
  var _monthlyMeeting = TextEditingController();
  var _monthlyMeetingAvgPresent = TextEditingController();
  var _visitToLowerBranch = TextEditingController();

  // Manpower info variables
  var _newSodosso = TextEditingController();
  var _newKormi = TextEditingController();
  var _newMuballigProttashi = TextEditingController();

  var _sodossoTeam = TextEditingController();
  var _kormiTeam = TextEditingController();
  var _mubaligProttashiTeam = TextEditingController();

  var _sodossoLokkhoMatra = TextEditingController();
  var _kormiLokkhoMatra = TextEditingController();

  var _sodossoShikkhaBoithok = TextEditingController();
  var _kormiShikkhaBoithok = TextEditingController();
  var _muballigProttashiShikkhaBoithok = TextEditingController();

  var _jilaShobgujari = TextEditingController();
  var _thanaShobgujari = TextEditingController();

  // prokashona info variables
  var _prokashonaKroy = TextEditingController();
  var _prokashonaBikroy = TextEditingController();
  var _noboChintaKroy = TextEditingController();
  var _nokibKroy = TextEditingController();


    // Economic info variables

  var _dayittoShilEyanot = TextEditingController();
  var _shudiEyanot = TextEditingController();
  var _odhostonEyanot = TextEditingController();
  var _centralMonthlyEyanot = TextEditingController();



     // official info variables
  var _hasBranchOffice = TextEditingController();
  var _branchOfficailCondition = TextEditingController();


  // external relation info variables
  var _withAndolan = TextEditingController();
  var _withBMC = TextEditingController();
  var _withOthers = TextEditingController();
  var _branchProblem = TextEditingController();
  var _branchPossiblity = TextEditingController();





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

                  // manpower
                  GetCard(cardText: Cons.manpowerInfo),
                  getManpowerInfo(),

                  // prokashona
                  GetCard(cardText: Cons.prokashonaInfo),
                  getPubInfo(),

                  // Economic info
                  GetCard(cardText: Cons.economicInfo),
                  getEconomicInfo(),

                  // Office info
                  GetCard(cardText: Cons.officialInfo),
                  getOfficialInfo(),

                  // external connection info
                  GetCard(cardText: Cons.externalConnectionInfo),
                  getExternalConnection(),

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
          padding: EdgeInsets.all(defaultPadding),
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
          padding: EdgeInsets.all(defaultPadding),
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
          padding: EdgeInsets.all(defaultPadding),
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
          padding: EdgeInsets.all(defaultPadding),
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

        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: DropdownButtonHideUnderline(
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: Cons.safarType,
                border: const OutlineInputBorder(),
              ),
              onChanged: (safarType) =>
                  setState(() => _selectedSafarType = safarType),
              validator: isEmpty,
              items:
                  Cons.safarTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  String? isEmpty(value) {
    if (value == null || value.isEmpty) {
      return Cons.emptyMsg;
    }
    return null;
  }

  Widget getOrgInfo() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _totalPresent,
            decoration: InputDecoration(
              labelText: Cons.totalpresent,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            controller: _sodossoKormiMuballigProttashi,
            decoration: InputDecoration(
              labelText: Cons.sodossoKormiMuballigProttashi,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _thanaDayittoshil,
            decoration: InputDecoration(
              labelText: Cons.thanaDayittoshil,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _jillaDayittoshil,
            decoration: InputDecoration(
              labelText: Cons.jillaDayittoshil,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _diniShongothon,
            decoration: InputDecoration(
              labelText: Cons.diniShongothon,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _islamiAndolan,
            decoration: InputDecoration(
              labelText: Cons.islamiAndolan,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _otherPeople,
            decoration: InputDecoration(
              labelText: Cons.otherPeople,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _activeJila,
            decoration: InputDecoration(
              labelText: Cons.activeJila,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _activeThana,
            decoration: InputDecoration(
              labelText: Cons.activeThana,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            controller: _inactiveCause,
            decoration: InputDecoration(
              labelText: Cons.inactiveCause,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _monthlyReportToCenter,
            decoration: InputDecoration(
              labelText: Cons.monthlyReportToCenter,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _monthlyMeeting,
            decoration: InputDecoration(
              labelText: Cons.monthlyMeeting,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _monthlyMeetingAvgPresent,
            decoration: InputDecoration(
              labelText: Cons.monthlyMeetingAvgPresent,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            controller: _visitToLowerBranch,
            decoration: InputDecoration(
              labelText: Cons.visitToLowerBranch,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
      ],
    );
  }

  Widget getManpowerInfo() {
    return Column(
      children: [
        Text(Cons.newIncrease),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _newSodosso,
            decoration: InputDecoration(
              labelText: Cons.newSodosso,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _newKormi,
            decoration: InputDecoration(
              labelText: Cons.newKormi,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _newMuballigProttashi,
            decoration: InputDecoration(
              labelText: Cons.newMuballigProttashi,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Text('MLS'),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _sodossoTeam,
            decoration: InputDecoration(
              labelText: Cons.sodossoTeam,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _kormiTeam,
            decoration: InputDecoration(
              labelText: Cons.kormiTeam,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _mubaligProttashiTeam,
            decoration: InputDecoration(
              labelText: Cons.mubaligProttashiTeam,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _sodossoLokkhoMatra,
            decoration: InputDecoration(
              labelText: Cons.sodossoLokkhoMatra,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _kormiLokkhoMatra,
            decoration: InputDecoration(
              labelText: Cons.kormiLokkhoMatra,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _sodossoShikkhaBoithok,
            decoration: InputDecoration(
              labelText: Cons.sodossoShikkhaBoithok,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _kormiShikkhaBoithok,
            decoration: InputDecoration(
              labelText: Cons.kormiShikkhaBoithok,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _muballigProttashiShikkhaBoithok,
            decoration: InputDecoration(
              labelText: Cons.muballigProttashiShikkhaBoithok,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _jilaShobgujari,
            decoration: InputDecoration(
              labelText: Cons.jilaShobgujari,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _thanaShobgujari,
            decoration: InputDecoration(
              labelText: Cons.thanaShobgujari,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
      ],
    );
  }

  Widget getPubInfo() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _prokashonaKroy,
            decoration: InputDecoration(
              labelText: Cons.prokashonaKroy,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _prokashonaBikroy,
            decoration: InputDecoration(
              labelText: Cons.prokashonaBikroy,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _noboChintaKroy,
            decoration: InputDecoration(
              labelText: Cons.noboChintaKroy,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _nokibKroy,
            decoration: InputDecoration(
              labelText: Cons.nokibKroy,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
      ],
    );
  }

  Widget getEconomicInfo() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _dayittoShilEyanot,
            decoration: InputDecoration(
              labelText: Cons.dayittoShilEyanot,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _shudiEyanot,
            decoration: InputDecoration(
              labelText: Cons.shudiEyanot,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _odhostonEyanot,
            decoration: InputDecoration(
              labelText: Cons.odhostonEyanot,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _centralMonthlyEyanot,
            decoration: InputDecoration(
              labelText: Cons.centralMonthlyEyanot,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
      ],
    );
  }

  Widget getOfficialInfo() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,

            controller: _hasBranchOffice,
            decoration: InputDecoration(
              labelText: Cons.hasBranchOffice,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: isEmpty,
            controller: _branchOfficailCondition,
            decoration: InputDecoration(
              labelText: Cons.branchOfficailCondition,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
      ],
    );
  }

  Widget getExternalConnection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _withAndolan,
            decoration: InputDecoration(
              labelText: Cons.withAndolan,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _withBMC,
            decoration: InputDecoration(
              labelText: Cons.withBMC,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _withOthers,
            decoration: InputDecoration(
              labelText: Cons.withOthers,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _branchProblem,
            decoration: InputDecoration(
              labelText: Cons.branchProblem,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: TextFormField(
            validator: isEmpty,
            controller: _branchPossiblity,
            decoration: InputDecoration(
              labelText: Cons.branchPossiblity,
              border: OutlineInputBorder(),
            ),
            // The validator receives the text that the user has entered.
          ),
        ),
      ],
    );
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
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(cardText),
          ),
        ),
      ],
    );
  }
}
