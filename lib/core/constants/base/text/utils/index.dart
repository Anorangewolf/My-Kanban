import 'package:mykanban/core/constants/base/text/en_us.dart';
import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/base/text/zh_sc.dart';

/// 文本样式
class TextTheme {
  /// 英语（美国）
  static TextStyles get enUs => EnUsTextStyles();

  /// 简体中文
  static TextStyles get zhSc => ZhCnTextStyles();
}
