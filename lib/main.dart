import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat_screen.dart';
import 'package:flutter_application_1/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLutter Demo',
      theme: AppTheme(selectedColor:1).theme(),
      home: const ChatScreen(),
    );
  }
}
