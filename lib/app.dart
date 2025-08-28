import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';
import 'package:mykanban/features/presentation/pages/utils/index.dart';
import 'package:mykanban/features/presentation/pages/utils/page_utils.dart';

/// 主应用
class Mykanban extends StatelessWidget {
  /// 主应用构造函数
  const Mykanban({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mykanban',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorFactory.fac(
          ThemeColor.dfThemeColor,
        ).background.color,
      ),
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
