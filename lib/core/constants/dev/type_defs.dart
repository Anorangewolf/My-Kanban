import 'package:flutter/material.dart';

// #region Color Type
/// 基础颜色类型
typedef BasicColors = Color;

/// 文字颜色类型
typedef TxtColors = Color;

/// 功能颜色类型
typedef FuncColors = Color;

/// 灰度
typedef GrayScale = Color;
// #endregion

// #region Text Type
/// **字体数据格式**
/// 用于定义字体相关的数据格式
/// - 字体家族：String family
/// - 字重：FontWeight weight
/// - 字体样式：FontStyle style
class Font {
  /// 构造函数
  Font({
    required this.family,
    this.weight = FontWeight.normal,
    this.style = FontStyle.normal,
  });

  // #region 字段类型定义
  /// 字体家族
  String family;

  /// 字重
  FontWeight weight;

  /// 字体样式
  FontStyle style;
  // #endregion

  // #region getters
  /// 字体家族
  String get f => family;

  /// 字重
  FontWeight get w => weight;

  /// 字体样式
  FontStyle get s => style;
  // #endregion
}

/// 文本字号
typedef FontSize = double;

/// 文本字间距
typedef Spacing = double;

/// 文本行高
typedef LineHeight = double;
// #endregion
