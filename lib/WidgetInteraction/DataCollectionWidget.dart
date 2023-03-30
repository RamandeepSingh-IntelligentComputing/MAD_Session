import 'package:flutter/material.dart';
import 'package:flutterapps/WidgetInteraction/studentInfoTile.dart';


class DataCollectionWidget extends StatelessWidget{

  void Function(Widget) onUpdate;

  DataCollectionWidget(this.onUpdate);

  void onAddClick(){
    onUpdate(getWidget());
  }

  Widget getWidget(){
    return(StudentInfoWidget(nm.text, cr.text));
  }

  TextEditingController nm = TextEditingController();
  TextEditingController cr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return(
      Column(children: [

        Expanded(child: TextField(decoration: InputDecoration(hintText: "Name"),controller: nm,)),
        Expanded(child: TextField(decoration: InputDecoration(hintText: "Course"),controller: cr,)),

      ],)
    );
  }

}