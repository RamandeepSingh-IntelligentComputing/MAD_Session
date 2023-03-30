import 'package:flutter/material.dart';

class StatefullListDemo extends StatefulWidget{
  StatefullListDemoState createState() => StatefullListDemoState();
}

class StatefullListDemoState extends State<StatefullListDemo>{
  String header = "List View Demo";
  List<Widget> stl = [Text("Student 1"),Text("Student 2"),Text("Student 3")];

  @override
  Widget build(BuildContext context) {
  return(
  Scaffold(
    appBar: AppBar(title: Text(header),),
    body: Column(children: [
      Expanded(child:
      ListView.builder(itemCount: stl.length,itemBuilder: (cntx,index){
        return stl[index];
      },),
        flex: 3,),
      Expanded(child: ElevatedButton(onPressed: ()=>{
        setState( (){
         header = "Updated Successfully";
         stl.add(Text("Dummy"));
         print(stl);
        })

      }, child:Icon(Icons.add) ,))
    ],),
  )
  );
  }

}