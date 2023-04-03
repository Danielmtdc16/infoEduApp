import 'package:flutter/material.dart';
import 'package:infoedu/constants.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback function;
  final String textInfo;

  const CustomButton({Key? key, required this.function, required this.textInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.green,
        ),
        child: Text(
          textInfo,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
