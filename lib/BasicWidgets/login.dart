import 'package:flutter/material.dart';

class login extends StatelessWidget{

  TextEditingController tc = TextEditingController();
  String name ="";
  String pass ="";

  void validate(){
    print("Name = ${tc.text} Pass = $pass");
    tc.text ="";
  }

  Widget loginUi(){
    return(
        Column(children: [
            Row(children: [
              const Text("Name"),
              Expanded(child: TextField(controller: tc,))
            ],),
            Row(children: [
              Text("Pass"),
              Expanded(child: TextField(obscureText: true,
                onChanged: (value)=>{
                  pass = value
                },))
            ],),
            ElevatedButton(onPressed: validate, child: Text("Click"))
          ],)
    );
  }

  @override
  Widget build(BuildContext context) {
   return (
   Scaffold(
     appBar: AppBar(title: Row(children: [
       Text("Login Page"),
       Expanded(child:TextField()),
       Icon(Icons.search_sharp)
     ],)),
     body: loginUi(),
     drawer: Drawer(child:
       CircleAvatar(
         child: Text("Rp", style: TextStyle(fontSize: 38),
         ),
       ),
     ),
     floatingActionButton:
     FloatingActionButton(child: Icon(Icons.add),onPressed: ()=>{},),

   )
   );
  }

}