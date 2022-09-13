import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddSepcies extends StatefulWidget {
  static const String id = 'AddSpeciesPage';

  const AddSepcies({Key? key}) : super(key: key);

  @override
  _AddSepciesState createState() => _AddSepciesState();
}

class _AddSepciesState extends State<AddSepcies> {
  String? speciesName;
  String? speciesDescription;
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: TextField(
                onChanged: (value) {
                  speciesName = value;
                },
                decoration: KTextFieldDecoration.copyWith(
                    hintText: 'Enter Your User Species Name'),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 50.0,
              ),
            ),
            Flexible(
              flex: 2,
              child: TextField(
                onChanged: (value) {
                  speciesDescription = value;
                },
                decoration: KTextFieldDecoration.copyWith(
                    hintText: 'Enter Description'),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 20.0,
              ),
            ),
            Flexible(
              flex: 2,
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () async {
                    await _firestore.collection('Species').add({
                      'SpeciesName': speciesName,
                      'SpeciesDes': speciesDescription,
                    });

                    print('Save Data');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Save Data'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
