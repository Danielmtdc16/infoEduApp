import 'package:flutter/material.dart';
import 'package:infoedu/constants.dart';

class SubjectCard extends StatelessWidget {
  final String year;
  final String division;
  final String title;

  const SubjectCard({
    Key? key,
    required this.year,
    required this.division,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.blue,
      ),
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.all(15.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "$year",
                  style: kcardTitle,
                ),
              ),
              Expanded(
                child: Text(
                  division,
                  style: kcardTitle,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  title,
                  style: kcardSubtitle,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0,),
          Text("2023 - Escola de Teresina", style: kcardSubtitle,),
        ],
      ),
    );
  }
}
