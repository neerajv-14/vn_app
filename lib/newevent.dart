import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEvent extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>_NewEvent();
    // TODO: implement createState



}

class _NewEvent extends State<NewEvent>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
          title:Text("New Event"),
          backgroundColor: Colors.deepPurpleAccent[400],
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children:[Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(


                  controller: _textEditingController,
                  maxLines: null,

                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.deepPurpleAccent[300],
                      labelText: 'Event',
                    prefixIcon: IconButton(
                      icon: Icon(Icons.calendar_today), onPressed: () { ; },

                    ),
                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(25)
                    )
                  ),

                ),
              ),
              Builder(
                builder: (context) {
                  return Center(
                    child: ElevatedButton(onPressed: (){
                      String newEventtext = _textEditingController.text;
                      Navigator.of(context).pop(newEventtext);
                    },child:Text("Add"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 40),
                        backgroundColor: Colors.deepPurple[400],





              )

            ),
                  );
          }
        ),
    ],
          )
      )


    );
  }

}