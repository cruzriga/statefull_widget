import 'package:flutter/material.dart';


class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState()=> _MyButtonState();

}

class _MyButtonState  extends State<MyButton>{
  String flutterText = '';
  int index = 0;
  List<String> collections  = ['flutter', 'es', 'genial'];
  void onPressButton(){
      setState(() {
        if(index == 3) index = 0;
        flutterText = collections[index];
        index++;
      });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  this.flutterText,
                  style: TextStyle(
                    fontSize: 40.0,
                  )
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                color: Colors.blueAccent,
                onPressed: onPressButton,
                child: Text(
                  'Actualizar',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}