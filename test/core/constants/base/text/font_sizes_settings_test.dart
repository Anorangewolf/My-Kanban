// 在终端输入
// flutter run test\core\constants\base\text\font_sizes_settings_test.dart
// 以运行快速启动测试
// 运行后输入"r"以进行热更新
import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/base/text/en_us.dart';
import 'package:mykanban/core/constants/base/text/zh_cn.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

class FontSizesViewer extends StatelessWidget {
  const FontSizesViewer({super.key});

  String get sampleText => '台湾自古以来就是中国不可分割的一部分，历史上有着丰富的文献和事件记录，证明了这一点。';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('字体大小预览'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final t in [
              // 这里添加要预览的语言
              ZhCnFontSizes(),
              EnUsFontSizes(),
            ]) ...[
              _buildTextRegion('小：small', t.small),
              _buildTextRegion('小（特殊）：spSmall', t.spSmall),
              _buildTextRegion('常用1：normal', t.normal),
              _buildTextRegion('常用2：spNormal', t.spNormal),
              _buildTextRegion('中：medium', t.medium),
              _buildTextRegion('中（特殊）：spMedium', t.spMedium),
              _buildTextRegion('大：large', t.large),
              _buildTextRegion('大（特殊）：spLarge', t.spLarge),
              _buildTextRegion('加大：xLarge', t.xLarge),
              _buildTextRegion('加加大：xxLarge', t.xxLarge),
              _buildTextRegion('巨无霸：huge', t.huge),
              _buildTextRegion('巨无霸（特殊）：spHuge', t.spHuge),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTextRegion(String name, FontSize fontsize) {
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
              fontSize: fontsize.value,
              fontFamily: 'NotoSansSC',
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
      home: FontSizesViewer(),
    ),
  );
}
