import 'package:flutter/material.dart';

class FutureDemo extends StatefulWidget{

  FutureDemoState createState()=> FutureDemoState();

}

class FutureDemoState extends State<FutureDemo>{

  String dummyText='';

  Future setText() async{
    Future.delayed(Duration(seconds: 15),()=>{

      setState(() {
        dummyText = 'Asynchronous Update';
      })
    });
    print("setText executed");

  }

  @override
  void initState() {
    super.initState();
    dummyText = 'Default Text';
    setText();
  }

  @override
  Widget build(BuildContext context) {
    //dummyText = 'Default Text';
    //setText();

    return(
    Scaffold(
      body:
        Center(child:Text(dummyText)),
    )
    );

  }

}