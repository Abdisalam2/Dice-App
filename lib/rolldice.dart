import 'package:flutter/material.dart';
import 'dart:math';

class Rolldice extends StatefulWidget {
  const Rolldice({super.key});

  @override
  State<Rolldice> createState() {
    return _RolldiceState();
  }
}

class _RolldiceState extends State<Rolldice> {
  var activeDiceimage = 'images/dice-2.png';

  void rollDice() {
    var myRandomNumebers = Random().nextInt(6) + 1;
    setState(() {
      activeDiceimage = 'images/dice-$myRandomNumebers.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceimage,
            width: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: rollDice,
            label: const Text('Roll dice'),
            icon: const Icon(Icons.arrow_forward_outlined),
          )
        ],
      ),
    );
  }
}
