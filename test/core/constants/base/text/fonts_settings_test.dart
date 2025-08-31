// 在终端输入
// flutter run test\core\constants\base\text\fonts_settings_test.dart
// 以运行快速启动测试
// 运行后输入"r"以进行热更新
import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/base/text/en_us.dart';
import 'package:mykanban/core/constants/base/text/zh_cn.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

class FontsViewer extends StatelessWidget {
  const FontsViewer({super.key});

  String get sampleText => 'Abstract gold queen.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('字体预览'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final t in [
              // 这里添加要预览的语言
              ZhCnFonts(),
              EnUsFonts(),
            ]) ...[
              _buildTextRegion('标题字体1', t.headline1),
              _buildTextRegion('小标题字体', t.title),
              _buildTextRegion('正文主字体', t.bodyPrimary),
              _buildTextRegion('正文加粗字体', t.bodyBold),
              _buildTextRegion('正文斜体字体', t.bodyItalic),
              _buildTextRegion('装饰性字体1', t.decorative1),
              _buildTextRegion('装饰性字体2', t.decorative2),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTextRegion(String name, Font font) {
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
          const SizedBox(height: 8),
          Text(
            sampleText,
            style: TextStyle(
              fontSize: 30,
              fontFamily: font.family,
              fontWeight: font.weight,
              fontStyle: font.style,
              letterSpacing: 2,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FontsViewer(),
    ),
  );
}
