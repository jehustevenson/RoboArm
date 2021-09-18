import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joystick/joystick.dart';
//import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
//import 'dart:async';
//import 'dart:math';
//import 'dart:convert';
//import 'package:flutter_blue/flutter_blue.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

void main() => runApp(MaterialApp(
      home: FirstRoute(),
    ));

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RoboArm',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.lightBlue[900],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "The newest Technology for Cocoa Farmers",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  width: 170,
                  margin: EdgeInsets.fromLTRB(25, 0, 0, 20),
                  //child: Align(alignment: Alignment(1, 0.97),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdRoute()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                          shape: StadiumBorder()),
                      icon: Icon(
                        Icons.bluetooth_connected,
                        color: Colors.lightBlue[900],
                      ),
                      label: Text(
                        'Initiate Connection',
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                        ),
                      )))
            ],
          ),
        ),
      ),

      //body
      body: Column(children: [
        Container(
            child: Row(

                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    "Welcome!",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ])),
        Container(
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    "Your Professional Bot",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ),
        Container(
            height: 169,
            width: 344,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.lightBlue[900]),
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  right: 10,
                  top: 10,
                  child: Image(
                    width: 100,
                    height: 150,
                    //fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/robot-arm.png',
                    ),
                  )),
              Positioned(
                  left: 15,
                  top: 10,
                  child: Column(children: [
                    Text(
                      "Hi, I Am Robot Kweku",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ])),
              Positioned(
                  left: 15,
                  top: 40,
                  child: Text(
                    "I am here to reduce forced",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                    ),
                  )),
              Positioned(
                  left: 15,
                  top: 70,
                  child: Text(
                    "labour on cocoa farms",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                    ),
                  )),
              Positioned(
                  left: 15,
                  top: 100,
                  child: Text(
                    "and help achieve SDG 8.7",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                    ),
                  )),
              Positioned(
                  left: 15,
                  top: 130,
                  child: Text(
                    "Please treat me nice :)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                    ),
                  )),
            ])),
        Container(
            height: 169,
            width: 344,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.lightBlue[900]),
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  left: 10,
                  top: 10,
                  child: Image(
                    width: 100,
                    height: 150,
                    //fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/robot.png',
                    ),
                  )),
              Positioned(
                  right: 15,
                  top: 60,
                  child: Column(children: [
                    Text(
                      "Please tap here to",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ])),
              Positioned(
                right: 30,
                top: 90,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      shape: StadiumBorder()),
                  child: Text(
                    'Control me :)',
                    style: TextStyle(color: Colors.lightBlue[900]),
                  ),
                ),
              ),
            ]))
      ]),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          title: Text(
            'Controls',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
      ),
      body: Column(children: [
        Container(
            child: Row(

                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    "Waist, Shoulder and Elbow joint",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ])),
        Container(
            height: 169,
            width: 344,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.lightBlue[800]),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.fromLTRB(0, 0, 100, 20),
            child: Joystick(
                size: 130,
                isDraggable: true,
                iconColor: Colors.white,
                backgroundColor: Colors.lightBlue[200],
                opacity: 0.5,
                joystickMode: JoystickModes.all,
                onUpPressed: () {})),
        Container(
            margin: EdgeInsets.fromLTRB(20, 0, 150, 0),
            child: Text(
              "Wrist and Gripper joint",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
        Container(
            height: 169,
            width: 344,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.lightBlue[800]),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.fromLTRB(0, 0, 100, 20),
            child: Joystick(
                size: 130,
                isDraggable: true,
                iconColor: Colors.white,
                backgroundColor: Colors.lightBlue[100],
                opacity: 0.5,
                joystickMode: JoystickModes.all,
                onUpPressed: () {}))
      ]),
    );

    //onPressed: (_direction) {
    // print("pressed $_direction");
    // }
  }
}

class ThirdRoute extends StatelessWidget {
  //final FlutterBlue flutterBlue = FlutterBlue.instance;
  //final List<BluetoothDevice> devicesList = new List<BluetoothDevice>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size.fromHeight(60.0),
      child: AppBar(
        title: Text(
          'Bluetooth Connection',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
    ));
  }
}



//
