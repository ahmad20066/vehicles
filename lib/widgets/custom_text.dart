import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  CustomText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 20),
      alignment: Alignment.center,
      width: double.infinity,
      color: Colors.orange[300],
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
