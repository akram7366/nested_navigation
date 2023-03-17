import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        color: Colors.deepPurple,
        width: double.infinity,
        child: const Text('الأمير أنس', style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}