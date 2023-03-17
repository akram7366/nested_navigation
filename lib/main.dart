import 'package:flutter/material.dart';
import 'package:nested_navigation/page.dart';
import 'banner.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
// final GlobalKey<NavigatorState> navigatorKey2 = GlobalKey();

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          elevation: 2,
          shadowColor: Colors.black
        ),
        primarySwatch: Colors.deepPurple
      ),
      // navigatorKey: navigatorKey2,
      builder: (context, child) => Directionality(textDirection: TextDirection.rtl, child: child!),
      home: const Main(),
    );
  }
}
// final key = GlobalKey<NavigatorState>();


class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if(navigatorKey.currentState!.canPop()) {
          navigatorKey.currentState!.pop();
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: Column(
        children: [
          Expanded(
            child: Navigator(
              key: navigatorKey,
              onGenerateRoute: (route) => MaterialPageRoute(
                settings: route,
                builder: (context) => const MyPage(),
              ),
            ),
          ),
           const MyBanner(),
        ],
      ),
    );
  }
}