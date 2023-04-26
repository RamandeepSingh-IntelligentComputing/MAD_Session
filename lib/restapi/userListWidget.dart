import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapps/restapi/restservice.dart';
import 'package:http/http.dart';

class userListWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: AppBar(title: Text("Rest Api Demo"),),
      body: FutureBuilder(
        future: RestService.getData(),
        builder: (cntx,snapshot){
          List<users> lst = [];
          if(snapshot.hasData)
            lst = snapshot.data as List<users>;

          return(
          ListView.builder(itemCount: lst.length,
            itemBuilder: (BuildContext cntx,int index){
              return ListTile(title: Text(lst[index].name),
                subtitle: Text(lst[index].email),
                trailing: CircleAvatar(child: Text(lst[index].id.toString()),radius: 38,),
              );
            },
            )
          );
        },
      ),
    )
    );
  }

}