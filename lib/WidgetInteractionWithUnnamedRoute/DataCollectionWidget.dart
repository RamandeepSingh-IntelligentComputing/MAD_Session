
import 'package:flutter/material.dart';
import 'package:flutterapps/WidgetInteractionWithNamedRoute/studentInfoTile.dart';

class DataCollectionWidget extends StatelessWidget{
  late BuildContext cntxt ;

  void onAddClick(){

    Navigator.pop(cntxt,getWidget());
  }

  Widget getWidget(){
    return(StudentInfoWidget(nm.text, cr.text));
  }

  TextEditingController nm = TextEditingController();
  TextEditingController cr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    cntxt = context;

    return(
    Scaffold(
      body: Column(children: [

        Expanded(child: TextField(decoration: InputDecoration(hintText: "Name"),controller: nm,)),
        Expanded(child: TextField(decoration: InputDecoration(hintText: "Course"),controller: cr,)),
        ElevatedButton(onPressed: onAddClick, child: Text("Done"))

      ],),)
    );
  }

}