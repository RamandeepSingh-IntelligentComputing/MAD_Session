
import 'package:flutter/material.dart';

import 'StatefullListDemo.dart';
import 'WidgetInteraction/AdvanceStudentList.dart';
import 'BasicWidgets/login.dart';

void main() {
  runApp(MainApp());
}

Widget MainApp()
{
  return  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StatefullListDemo(),
  );
}





