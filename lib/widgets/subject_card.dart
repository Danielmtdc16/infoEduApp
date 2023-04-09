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
        borderRadius: BorderRadius.circular(15.0),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF00B237),
            Color(0xFF195200),
        ],),
      ),
      margin: const EdgeInsets.only(bottom: 20.0),
      padding: const EdgeInsets.all(15.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  year,
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
                  style: kcardSubtitle.copyWith(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: const LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Color(0xFFA6A6A6),
                  Color(0xFFF4ECEC),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              "2023 - Escola de Teresina",
              style: kcardSubtitle,
            ),
          ),

        ],
      ),
    );
  }
}
