
import 'package:flutter/material.dart';
import 'package:flutterapps/WidgetInteractionWithNamedRoute/studentInfoTile.dart';


class DataCollectionWidget extends StatelessWidget{

  late void Function(Widget) onUpdate;
  late BuildContext cntxt ;

  //DataCollectionWidget(this.onUpdate);

  void onAddClick(){
    onUpdate(getWidget());
    Navigator.pop(cntxt);
  }

  Widget getWidget(){
    return(StudentInfoWidget(nm.text, cr.text));
  }

  TextEditingController nm = TextEditingController();
  TextEditingController cr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    cntxt = context;
    onUpdate = ModalRoute.of(context)!.settings.arguments as void Function(Widget);
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