import 'package:flutter/material.dart';

class StudentInfoWidget extends StatelessWidget{
  String Name;
  String Course;
  StudentInfoWidget(this.Name,this.Course);

  @override
  Widget build(BuildContext context) {
    return(
    ListTile(leading: CircleAvatar(child: Text(Name[0]),),
    title: Text(Name), subtitle: Text(Course),
      trailing: ElevatedButton(onPressed: ()=>{},child: Icon(Icons.delete),),
    )
    );
  }


}