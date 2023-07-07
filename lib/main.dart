import 'package:cicks/pages/splashscreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Cicks());
}
class Cicks extends StatelessWidget {
  const Cicks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFebeaee),
        appBarTheme: AppBarTheme(color: Color(0xFFebeaee),),

      ),
      home: Splashscreen(),
    );
  }
}
