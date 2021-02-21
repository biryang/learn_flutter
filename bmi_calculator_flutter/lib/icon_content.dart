import 'package:flutter/material.dart';

const textStyle = TextStyle(
  fontSize: 18, color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  const IconContent({@required this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        SizedBox(height: 15),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}