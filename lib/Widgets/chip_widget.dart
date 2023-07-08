import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
   ChipWidget({
    super.key,
    required this.chiplabel
  });
 final String chiplabel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            border : Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Chip(label: Text(chiplabel,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,

        ),),
          backgroundColor: Color(0xFFebeaee),

          ),
      )
      );
  }
}