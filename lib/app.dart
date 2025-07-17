import 'package:flutter/material.dart';
import 'package:mykanban/features/basic/presentation/pages/index.dart';

/// 主应用
class Mykanban extends StatelessWidget {
  /// 主应用构造函数
  const Mykanban({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mykanban',
      home: const Logo(),
      // 路由配置
      routes: {
        '/home': (context) => const Home(),
        '/login': (context) => const Login(),
        '/logo': (context) => const Logo(),
        '/settings': (context) => const Settings(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
