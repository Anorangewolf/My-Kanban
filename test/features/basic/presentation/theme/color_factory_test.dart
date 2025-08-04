// 在终端输入
// flutter run test/features/basic/presentation/theme/color_factory_test.dart
// 以运行快速启动测试
// 运行后输入"r"以进行热更新
import 'package:flutter/material.dart';
import 'package:mykanban/features/presentation/theme/utils/index.dart';

class ColorPaletteViewer extends StatelessWidget {
  const ColorPaletteViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('配色板预览')),
      // 在这里设置背景颜色
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final t in [
              // 在这里添加要预览的主题
              ColorFactory.light,
              ColorFactory.dark,
            ]) ...[
              _buildColorCard('主色', t.primary),
              _buildColorCard('主色变体', t.primaryVariant),
              _buildColorCard('次要色', t.secondary),
              _buildColorCard('次要色变体', t.secondaryVariant),
              _buildColorCard('背景色', t.background),
              _buildColorCard('表面背景色', t.surface),
              _buildColorCard('蒙版', t.mask),
              _buildColorCard('主文字', t.onPrimary),
              _buildColorCard('次要文字', t.onSecondary),
              _buildColorCard('背景文字', t.onBackground),
              _buildColorCard('二级背景文字', t.onSurface),
              _buildColorCard('错误', t.error),
              _buildColorCard('成功', t.success),
              _buildColorCard('警告', t.warning),
              _buildColorCard('白色', t.gray0),
              _buildColorCard('灰度12%', t.gray1),
              _buildColorCard('灰度25%', t.gray2),
              _buildColorCard('灰度38%', t.gray3),
              _buildColorCard('灰度54%', t.gray4),
              _buildColorCard('灰度76%', t.gray5),
              _buildColorCard('黑色', t.gray6),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildColorCard(String name, Color color) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: _getContrastColor(color),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              color.toString(),
              style: TextStyle(
                color: _getContrastColor(color),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getContrastColor(Color color) {
    // 根据背景色亮度决定文字颜色
    return color.computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ColorPaletteViewer(),
      ),
    ),
  );
}
