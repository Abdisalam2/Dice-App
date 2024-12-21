
import 'package:flutter/material.dart';
import 'package:dice_app/rolldice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange,
        title: const Text('DICE APP'),
        centerTitle: true,
      ),
      body:const  Center(
        child: Rolldice(),
      
      ),
    );
  }
}
