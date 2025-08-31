// 在终端输入
// flutter run test\core\constants\base\text\font_factory_test.dart
// 以运行快速启动测试
// 运行后输入"r"以进行热更新
import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/base/text/utils/index.dart';

class FontStyleViewer extends StatelessWidget {
  const FontStyleViewer({super.key});

  String get sampleText => '永明琴康贰 Qf gradyq';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('文本格式预览')),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            for (final f in [
              // 在这里添加要预览的主题
              TextFactory.fac,
            ]) ...[
              // 在这里添加要预览的样式
              _buildTextRegion('loginPageButton', f.loginPageButton),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTextRegion(String name, TextStyle textstyle) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black87,
            ),
          ),
          Text(sampleText, style: textstyle),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FontStyleViewer(),
    ),
  );
}
