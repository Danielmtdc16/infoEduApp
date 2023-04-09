import 'package:flutter/material.dart';
import 'package:infoedu/constants.dart';

class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {

  List<String> subjects = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("Disciplinas"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              15.0,
            ),
            child: ListView.builder(
              itemCount: subjects.length,
              itemBuilder: (context, index){
                return null;
              }
            ),
          ),
        ),
      ),
    );
  }
}
