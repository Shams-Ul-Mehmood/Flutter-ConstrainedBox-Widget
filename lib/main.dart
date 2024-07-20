import 'package:flutter/material.dart';

void main() {
  runApp( ConstraintBox_Widget_App());
}

class ConstraintBox_Widget_App extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return MaterialApp(
      title: "Constraint Box Widget App",
      debugShowCheckedModeBanner: false,
      color: Colors.lightBlueAccent,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.light,
      ),
      home: ConstraintBox_Widget_App_Activity(),
    );
  }
}


class ConstraintBox_Widget_App_Activity extends StatefulWidget
{
  @override
  State<ConstraintBox_Widget_App_Activity> createState()
  {
    return ConstraintBox_Widget_App_Activity_State();
  }
}

class ConstraintBox_Widget_App_Activity_State extends State<ConstraintBox_Widget_App_Activity>
{
  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        primary: true,
        title: Text("ConstraintBox Widget App"),
        elevation: 10,
        centerTitle: true,
        titleSpacing: 10,
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.white,
      body: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 150,
            maxWidth: 800,
            minHeight: 50,
            maxHeight: 130,
          ),
          child: Text( "This is CyberShark and Most Welcome to Flutter Development and I so interested in Hybrid Application Development.",
            style: TextStyle( fontSize: 35 ),
            overflow: TextOverflow.ellipsis,
          )),
    );
  }
}