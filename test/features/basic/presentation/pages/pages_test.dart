import 'package:flutter/material.dart';
import 'package:mykanban/features/basic/presentation/pages/utils/index.dart';

/// 快速启动测试应用
class PagesTest extends StatelessWidget {
  /// 构造函数
  const PagesTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PagesTest',
      // 此处home后面放置要测试的页面
      home: Login(),
    );
  }
}

void main() {
  runApp(const PagesTest());
}
