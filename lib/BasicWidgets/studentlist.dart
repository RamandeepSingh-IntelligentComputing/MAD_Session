import 'package:flutter/material.dart';
import 'package:flutterapps/WidgetInteraction/studentInfoTile.dart';

class studentlist extends StatefulWidget{
  String temp ="";
  studentliststate createState() => studentliststate();

}

class studentliststate extends State<studentlist>{

  TextEditingController nm = TextEditingController();
  TextEditingController cr = TextEditingController();

  List<studentInfo> stlb= [];

  List<Widget> stl = [StudentInfoWidget("Student1","CSE"),StudentInfoWidget("Student2","IT")];
  String header = "Student Details";

  void addData(){

    setState(() {
      header = "List Updated";
      stl.add(StudentInfoWidget("Dummy","CSE"));
      print(stl);

      stlb.add(studentInfo(nm.text, cr.text));
    });

  }

  @override
  Widget build(BuildContext context) {
    print("${widget.temp}");
    return(Scaffold(
      body:Column(
        children: [
          Center(child:Text(header)),
          stList(),
          stListBuilder(),
          addStudentWidget()
        ],
      )
    ));
  }

  Widget stList() {
    return Expanded(
        child:ListView(children: stl,)
    );
  }

  Widget addStudentWidget() {
    return(
    Expanded(child: Card(child:Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextField(controller:nm,
          decoration: const InputDecoration(
          hintText: "Name"
        ),),
        TextField( controller: cr,
          decoration: const InputDecoration(
          hintText: "Course"
        ),),
        ElevatedButton(onPressed:addData, child: Text("Add"))
      ],),),)
    );
  }

  Widget stListBuilder() {
    return(
        Expanded(
          child:ListView.builder(itemCount: stlb.length,
              itemBuilder: (BuildContext cntx,int index){
                return(StudentInfoWidget(stlb[index].Name,stlb[index].Course));
              }),)
    );
  }

}

class studentInfo {
  String Name;
  String Course;

  studentInfo(this.Name,this.Course);
}