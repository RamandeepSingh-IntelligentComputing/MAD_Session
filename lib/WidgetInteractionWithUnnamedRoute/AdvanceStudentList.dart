import "package:flutter/material.dart";
import "package:flutterapps/WidgetInteractionWithUnnamedRoute/AdvancedListWidget.dart";
import "package:flutterapps/WidgetInteractionWithUnnamedRoute/DataCollectionWidget.dart";

class AdvanceStudentList extends StatefulWidget{
  AdvanceStudentListState createState()=> AdvanceStudentListState();
}

class AdvanceStudentListState extends State<AdvanceStudentList>{

  static AdvanceListWidget advanceListWidget = AdvanceListWidget();

  Future<void> Navigateto() async {
    final wdgt = await Navigator.push(context,
    MaterialPageRoute(builder: (context)=>DataCollectionWidget())

    );

    advanceListWidget.advancelistwidgetstate.updateCallback(wdgt);
  }

  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: AppBar(title: const Text(" Advance List"),),
      body:
      PlaceHolder(advanceListWidget),

      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        Padding(padding: EdgeInsets.only(right: 30),child:ElevatedButton(onPressed: Navigateto, child: Icon(Icons.add))),
        Padding(padding: EdgeInsets.only(right: 30),child:ElevatedButton(onPressed: ()=>{}, child: Icon(Icons.delete))),
        ElevatedButton(onPressed: Navigateto, child: Icon(Icons.edit)),
      ],
    )
    );
  }
}

//------------Place Holder-------

class PlaceHolder extends StatelessWidget{


  Widget ListWidget ;
  //Widget DetailsWidget;

  PlaceHolder(this.ListWidget);

  @override
  Widget build(BuildContext context) {
    return(
    Column(children: [
      Expanded(child: ListWidget),
    ],)
    );

  }
}