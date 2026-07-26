import 'package:chats_yes_no_app/config/theme/app_theme.dart';
import 'package:chats_yes_no_app/presentation/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material app',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 14).theme(),
      home: ChatScreen(),
    );
  }
}
