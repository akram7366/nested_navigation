import 'package:flutter/material.dart';

import 'main.dart';

class MyPage extends StatelessWidget {
  final int i;
  const MyPage({this.i = 0, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الأنتقال المتداخل'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$i', style: const TextStyle(fontSize: 30, color: Colors.deepPurple)),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyPage(i: i + 1)));
                // navigatorKey.currentState!.push(MaterialPageRoute(builder: (context) => MyPage(i: i + 1)));

                // فوق البانر
                // Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => MyPage(i: i + 1)));
              },
              child: const Text("أنتقال"),
            ),
            if(Navigator.of(context).canPop())
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                  // navigatorKey.currentState!.pop();
                },
                child: const Text("رجوع"),
              ),
          ],
        ),
      ),
    );
  }
}