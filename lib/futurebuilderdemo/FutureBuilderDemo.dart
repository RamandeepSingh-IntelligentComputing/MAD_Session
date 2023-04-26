import 'package:flutter/material.dart';

class FutureBuilderDemo extends StatefulWidget{

  FutureBuilderDemoState createState()=> FutureBuilderDemoState();

}

class FutureBuilderDemoState extends State<FutureBuilderDemo>{

  Future<String> setText() async {
    return Future.delayed(Duration(seconds: 15),() {
      return "Asynchronous Text";

    });
    print("setText executed");

  }

  /*@override
  void initState() {
    super.initState();
    dummyText = 'Default Text';
    setText();
  }*/

  @override
  Widget build(BuildContext context) {

    return(
    Scaffold(
      body:
        FutureBuilder(initialData: "Nothing to show ",
          builder:(cntx,snapshot){
          if(snapshot.hasData) {
            return Center(child: Text("Initial Data ${snapshot.data}"));
          }
          return(Center(child: Text("No Data")));

        },
        future: setText(),

        ),
    )
    );

  }

}