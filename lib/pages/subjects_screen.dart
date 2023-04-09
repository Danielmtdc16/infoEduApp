import 'package:flutter/material.dart';
import 'package:infoedu/constants.dart';
import 'package:infoedu/widgets/subject_card.dart';

class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {
  List<String> subjects = ["Educação Física", "Português", "Matemática", "Química"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("Disciplinas"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  return SubjectCard(
                    year: "1º Ano",
                    division: "B",
                    title: subjects[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
