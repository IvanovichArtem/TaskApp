import 'package:flutter/material.dart';

class CreateTaskForm extends StatefulWidget {
  @override
  _CreateTaskFormState createState() => _CreateTaskFormState();
}

class _CreateTaskFormState extends State<CreateTaskForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.zero,
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              TextField(
                autofocus: true,
              ),
              TextField()
            ],
          ),
        ));
  }
}
