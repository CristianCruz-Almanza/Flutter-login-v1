import 'package:flutter/material.dart';
import 'package:login_v1/ui/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter login-v1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: Scaffold(
        body: Center(
          child: LoginView(),
        ),
      ),
    );
  }
}
