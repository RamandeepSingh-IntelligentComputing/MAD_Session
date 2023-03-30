import "package:flutter/material.dart";
import "package:flutterapps/WidgetInteraction/AdvancedListWidget.dart";
import "package:flutterapps/WidgetInteraction/DataCollectionWidget.dart";

class AdvanceStudentList extends StatefulWidget{
  AdvanceStudentListState createState()=> AdvanceStudentListState();
}

class AdvanceStudentListState extends State<AdvanceStudentList>{

  static AdvanceListWidget advanceListWidget = AdvanceListWidget();
  static DataCollectionWidget dataCollectionWidget = DataCollectionWidget(advanceListWidget.advancelistwidgetstate.updateCallback);

  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: AppBar(title: const Text(" Advance List"),),
      body:
      PlaceHolder(advanceListWidget,dataCollectionWidget),

      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        Padding(padding: EdgeInsets.only(right: 30),child:ElevatedButton(onPressed: dataCollectionWidget.onAddClick, child: Icon(Icons.add))),
        Padding(padding: EdgeInsets.only(right: 30),child:ElevatedButton(onPressed: ()=>{}, child: Icon(Icons.delete))),
        ElevatedButton(onPressed: ()=>{}, child: Icon(Icons.edit)),
      ],
    )
    );
  }
}

//------------Place Holder-------

class PlaceHolder extends StatelessWidget{


  Widget ListWidget ;
  Widget DetailsWidget;

  PlaceHolder(this.ListWidget,this.DetailsWidget);

  @override
  Widget build(BuildContext context) {
    return(
    Column(children: [
      Expanded(child: ListWidget,flex: 3,),
      Expanded(child: (DetailsWidget))
    ],)
    );

  }
}