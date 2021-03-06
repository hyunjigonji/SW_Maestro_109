import 'dart:io';

import 'package:flutter/material.dart';
import 'package:app109/dataCenter.dart';
import 'package:app109/medicine/medicine.dart';

class selectMedicineUser extends StatefulWidget {
  selectMedicineUser({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _selectMedicineUserState createState() => _selectMedicineUserState();
}

class _selectMedicineUserState extends State<selectMedicineUser> {
  var namesList = new List<String>();
  var idsList = new List<String>();

  @override
  void initState() {
    super.initState();
    namesList = userNameList;
    idsList = userIdList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사용자 선택'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10.0),
        itemCount: namesList.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 80,
            child: RaisedButton(
            //color: Colors.amber,
              child: Center(
                  child: Text(
                      '${namesList[index]}',
                  style: TextStyle(color: Colors.black, fontSize: 25)
                  )
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => medicine(userId: idsList[index]),
                  ),
                );
              },
              //padding: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(50.0)
              ),
              color: Colors.white54,
            )
          );
        }
      )
    );
  }
}