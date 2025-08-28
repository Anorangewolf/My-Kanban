import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';
import 'package:mykanban/features/presentation/pages/utils/index.dart';
import 'package:mykanban/features/presentation/pages/utils/page_utils.dart';

/// 快速启动测试应用
class PagesTest extends StatelessWidget {
  /// 构造函数
  const PagesTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorFactory.light(
          ThemeColor.dfThemeColor,
        ).background.color,
      ),
      debugShowCheckedModeBanner: false,
      title: 'PagesTest',
      // 此处home后面放置要测试的页面
      home: const Login(),
    );
  }
}

void main() {
  runApp(const PagesTest());
}
