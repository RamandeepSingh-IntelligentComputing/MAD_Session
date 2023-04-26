
import 'package:flutter/material.dart';
import 'package:flutterapps/WidgetInteractionWithNamedRoute/DataCollectionWidget.dart';
import 'package:flutterapps/WidgetInteractionWithNamedRoute/AdvancedListWidget.dart';
import 'package:flutterapps/restapi/userListWidget.dart';

import 'WidgetInteractionWithNamedRoute/AdvanceStudentList.dart';
import 'futurebuilderdemo/FutureBuilderDemo.dart';
import 'futuredemo/FutureDemo.dart';


void main() {
  runApp(MainApp());
}

Widget MainApp()
{
  return  MaterialApp(
    debugShowCheckedModeBanner: false,
    /*initialRoute: '/',
    routes: {
      '/':(context)=>AdvanceStudentList(),
      '/DataCollection':(context)=>DataCollectionWidget(),
    },*/
    home: userListWidget(),
  );
}





