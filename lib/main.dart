import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int a){
    final Player = AudioCache();
    Player.play('note$a.wav');
  }
  Expanded BuildSound(int number,Color color)
  {
    return  Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(number);
        },
        color: color,
        child: Text('Hi Click Me'),
      ),
    ); //button2
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.black,
        appBar:AppBar(
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildSound(1,Colors.redAccent),
              BuildSound(2,Colors.blueAccent),
              BuildSound(3,Colors.greenAccent),
              BuildSound(4,Colors.yellowAccent),
              BuildSound(5,Colors.purpleAccent),
              BuildSound(6,Colors.blueAccent),
              BuildSound(7,Colors.cyanAccent),
            ],
          ),
        ),

      ),
    );
  }
}
