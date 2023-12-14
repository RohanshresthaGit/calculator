import 'package:flutter/material.dart';

class elevated extends StatelessWidget {
  final String name;
  VoidCallback onpressed;
  final Color color;

  elevated({required this.name, required this.onpressed, required this.color});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: onpressed,
          child: Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          )),
    );
  }
}
