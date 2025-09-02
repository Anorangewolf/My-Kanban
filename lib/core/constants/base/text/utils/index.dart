import 'package:mykanban/core/constants/base/text/en_us.dart';
import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/base/text/zh_cn.dart';

/// 文本样式
class TextFactory {
  /// 英语（美国）
  static TextStyles get enUs => EnUsTextStyles();

  /// 简体中文
  static TextStyles get zhSc => ZhCnTextStyles();

  /// 主题工厂
  static TextStyles get fac => ZhCnTextStyles();
}

// #region 别称
/// 应用的字体
TextStyles txtTheme = TextFactory.fac;
// #endregion
