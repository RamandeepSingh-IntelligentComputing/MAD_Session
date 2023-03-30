import 'package:flutter/material.dart';

Widget styledText(String text){
  return Center(child:Text(text,
    style: TextStyle(decoration: TextDecoration.none ),));

}

Widget dummyColumn(){
  return (
      Expanded(child:Column(
        children:
        List.generate(5, (index) { return styledText("Widget $index");}),
      ))
  );
}

Widget styledContainer() {
  return(Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.lightBlue)),
    child: dummyColumn(),

  ));
}

Widget inputRow(String label){
  return(
      Row(
        children: [
          Text(label),
          Expanded(child:TextField()),
        ],
      )
  );
}

class loginBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return(
    Container(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      decoration: BoxDecoration(border: Border.all(width: 3,color: Colors.redAccent),),
        child:Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(50, 0, 100, 0),child:inputRow("User Id")),
            Padding(padding: EdgeInsets.fromLTRB(50, 0, 100, 0),child:inputRow("Pass")),
          ],
        )
    )
    );
  }


}