import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
String x;
web(x) async
{
  var url = "http://<enter your ip here>/cgi-bin/web.py?x=${x}";
  var r = await http.get(url);
  print(r.body); 
}

myfunc()
{
  var mybody = Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.red,

    child: Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.amber,

        child: Column(children: <Widget>[
          Card(
            child:TextField(
              onChanged: (val)
              {
                x = val;
              },
            )
          ),
          Card(
            child: FlatButton(
              onPressed: ()
              {
                web(x);
              },
              child: Text("Run Command"),
            ),
          )
        ],),
      ),
    ),

  );

   return MaterialApp(
     
     home:Scaffold(appBar: AppBar(title: Text("Server Application"),),
     body: mybody,)




  );



}
