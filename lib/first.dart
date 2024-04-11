import 'package:flutter/material.dart';
import 'package:rishabhfirst/second.dart';

class Rishabh extends StatelessWidget {
  const Rishabh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Rishabh'),
       
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return samar();
          },));
        },
        child: Center(child: Text('samar')))
    );
  }
}