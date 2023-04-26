import 'package:flutter/material.dart';
import 'package:flutterapps/WidgetInteraction/AdvanceStudentList.dart';
import 'package:flutterapps/WidgetInteraction/studentInfoTile.dart';

class AdvanceListWidget extends StatefulWidget{

  AdvanceListWidgetState advancelistwidgetstate = AdvanceListWidgetState();

  AdvanceListWidgetState createState()=> advancelistwidgetstate;

}

class AdvanceListWidgetState extends State<AdvanceListWidget>{
  List<Widget> widgetList = [];


  void delComponent(int index)
  {
    setState(() {
      widgetList.removeAt(index);
    });

  }

  void updateCallback(Widget widget){
    setState(() {
      widgetList.add(widget);
    });
  }

  @override
  Widget build(BuildContext context) {
    return (
        ListView.builder(itemCount: widgetList.length,
        itemBuilder: (BuildContext cntx,int index){
          return widgetList[index];
        })
    );
  }


}