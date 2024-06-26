import 'package:flutter/material.dart';
import 'home_page.dart';
import 'notification/check_not.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  checkNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
