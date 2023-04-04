import 'package:flutter/material.dart';
//import 'package:infoedu/constants.dart';

class PhotoAttachment extends StatelessWidget {
  const PhotoAttachment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.black12,
      backgroundImage: null,
      maxRadius: 70.0,
      child: Center(
        child: Icon(
          Icons.person,
          color: Colors.black45,
          size: 50.0,
        ),
      ),
    );
  }
}
