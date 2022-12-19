import 'package:flutter/material.dart';

import 'newevent.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_MyApp();


}

class _MyApp extends State<MyApp>{


  final List<Widget> _list=[
 /* Container( height: 150,
  width: double.infinity,
  color: Colors.white,
  alignment: Alignment.topCenter,
  margin: const EdgeInsets.all(20),
  padding: const EdgeInsets.all(30),
    child: Text("Event1",
      style: TextStyle(fontSize: 40),
    ),

  )

  */




  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent[100],
        appBar: AppBar(
          title: Text("Event Scheduler"),
          backgroundColor: Colors.deepPurpleAccent[400],

        ),
        body: Container(
           height: double.infinity,

            child: ListView.builder(

            itemCount:_list.length,
            itemBuilder: (context,index)=>_list[index]),
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.deepPurpleAccent[400],
              onPressed: () async{
                 String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewEvent()));
                setState((){
                  _list.add(
                      Container(
                        //height: 120,
                        width: double.infinity,
                        color: Colors.white,
                        alignment: Alignment.topCenter,
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(15),
                        child: Center(
                          child: Text(newText,
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,

                          ),
                        ),

                  )
                  );

              });
              },
              child: Icon(Icons.add),
            );
          }
        ),
      )
    );
  }

}