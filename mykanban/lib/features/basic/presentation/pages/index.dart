import 'package:flutter/material.dart';

/// ��ҳ
class Index extends StatelessWidget {
  /// ��ҳ
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '��ҳ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
