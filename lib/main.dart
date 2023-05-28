import 'package:flutter/material.dart';
import 'package:brocoffee_mobile/pages/login_page.dart';

// import 'package:go_router/go_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
