import 'package:flutter/material.dart';

// #region Color Type

// #region AHSV颜色基本属性
/// AHSV颜色基本属性（模板）
abstract class AHSVColorProp<T extends AHSVColorProp<T>> {
  /// AHSV颜色基本属性
  const AHSVColorProp(this.value);

  /// 属性值
  final double value;

  /// 工厂方法，子类必须实现
  T create(double value);

  // #region 运算符重载
  /// +运算符重载，double在后
  T operator +(double other) => create(value + other);

  /// -运算符重载，double在后
  T operator -(double other) => create(value - other);

  /// *运算符重载，double在后
  T operator *(double other) => create(value * other);

  /// /运算符重载，double在后
  T operator /(double other) => create(value / other);

  /// >运算符重载，double在后
  bool operator >(double other) => value > other;

  /// <运算符重载，double在后
  bool operator <(double other) => value < other;
  // #endregion
}

/// 透明度
class Alpha extends AHSVColorProp<Alpha> {
  /// 透明度
  const Alpha(super.value);

  @override
  Alpha create(double value) => Alpha(value);

  /// 默认透明度
  static const Alpha dfAlpha = Alpha(1);

  /// 0.88
  static const Alpha t88 = Alpha(0.88);

  /// 0.75
  static const Alpha t75 = Alpha(0.75);

  /// 0.62
  static const Alpha t36 = Alpha(0.62);

  /// 0.46
  static const Alpha t46 = Alpha(0.46);

  /// 0.24
  static const Alpha t24 = Alpha(0.24);

  /// 0.12
  static const Alpha t12 = Alpha(0.12);

  /// 透明
  static const Alpha transparent = Alpha(0);
}

/// 色相
class Hue extends AHSVColorProp<Hue> {
  /// 色相
  const Hue(super.value);

  @override
  Hue create(double value) => Hue(value);

  /// 默认色相
  static const Hue dfHue = Hue(62);

  /// 红
  static const Hue red = Hue(0);

  /// 橙
  static const Hue orange = Hue(30);

  /// 黄绿
  static const Hue yellowGreen = Hue(90);

  /// 绿
  static const Hue green = Hue(120);

  /// 青
  static const Hue cyan = Hue(180);

  /// 蓝
  static const Hue blue = Hue(240);

  /// 紫
  static const Hue purple = Hue(270);

  /// 品红
  static const Hue pink = Hue(300);

  /// 玫红
  static const Hue mauve = Hue(330);
}

/// 饱和度
class Saturation extends AHSVColorProp<Saturation> {
  /// 饱和度
  const Saturation(super.value);

  @override
  Saturation create(double value) => Saturation(value);

  /// 默认饱和度
  static const Saturation dfSaturation = Saturation(0.58);

  /// 0.98
  static const Saturation s98 = Saturation(0.98);

  /// 0.76
  static const Saturation s76 = Saturation(0.76);

  /// 0.38
  static const Saturation s38 = Saturation(0.38);

  /// 0.30
  static const Saturation s30 = Saturation(0.30);

  /// 0.04
  static const Saturation s04 = Saturation(0.04);

  /// 灰度
  static const Saturation gray = Saturation(0);
}

/// 亮度
class Value extends AHSVColorProp<Value> {
  /// 亮度
  const Value(super.value);

  @override
  Value create(double value) => Value(value);

  /// 默认亮度
  static const Value dfValue = Value(0.62);

  /// 0.96
  static const Value v96 = Value(0.96);

  /// 0.88
  static const Value v88 = Value(0.88);

  /// 0.75
  static const Value v75 = Value(0.75);

  /// 0.46
  static const Value v46 = Value(0.46);

  /// 0.24
  static const Value v24 = Value(0.24);

  /// 0.04
  static const Value v04 = Value(0.04);
}
// #endregion

// #region 颜色类型
/// 颜色类型（模板）
class ColorType {
  /// 颜色类型
  ColorType(this._color);

  /// fromAHSV
  ColorType.fromAHSV(
    Alpha alpha,
    Hue hue,
    Saturation saturation,
    Value value,
  ) : _color = HSVColor.fromAHSV(
        alpha.value,
        hue.value,
        saturation.value,
        value.value,
      );

  /// fromColor
  ColorType.fromColor(Color color) : _color = HSVColor.fromColor(color);

  final HSVColor _color;

  /// 值
  HSVColor get colorValue => _color;

  /// 颜色
  Color get color => _color.toColor();

  /// 透明度
  Alpha get alpha => Alpha(_color.alpha);

  /// 色相
  Hue get hue => Hue(_color.hue);

  /// 饱和度
  Saturation get saturation => Saturation(_color.saturation);

  /// 亮度
  Value get value => Value(_color.value);
}

/// 主题主色
class ThemeColor extends ColorType {
  /// 主题主色
  ThemeColor(super.color);

  /// fromAHSV
  ThemeColor.fromAHSV(
    super.alpha,
    super.hue,
    super.saturation,
    super.value,
  ) : super.fromAHSV();

  /// fromColor
  ThemeColor.fromColor(super.color) : super.fromColor();

  /// 默认主题主色
  static ThemeColor dfThemeColor = ThemeColor.fromAHSV(
    Alpha.dfAlpha,
    Hue.dfHue,
    Saturation.dfSaturation,
    Value.dfValue,
  );
}

/// 基本颜色
class BasicColor extends ColorType {
  /// 基本颜色
  BasicColor(super.color);

  /// fromAHSV
  BasicColor.fromAHSV(
    super.alpha,
    super.hue,
    super.saturation,
    super.value,
  ) : super.fromAHSV();
}

/// 文字颜色
class TxtColor extends ColorType {
  /// 文字颜色
  TxtColor(super.color);

  /// fromAHSV
  TxtColor.fromAHSV(
    super.alpha,
    super.hue,
    super.saturation,
    super.value,
  ) : super.fromAHSV();
}

/// 功能颜色
class FuncColor extends ColorType {
  /// 功能颜色
  FuncColor(super.color);

  /// fromAHSV
  FuncColor.fromAHSV(
    super.alpha,
    super.hue,
    super.saturation,
    super.value,
  ) : super.fromAHSV();

  /// fromColor
  FuncColor.fromColor(super.color) : super.fromColor();
}

/// 灰度
class GrayScale extends ColorType {
  /// 灰度
  GrayScale(super.color);

  /// fromAHSV
  GrayScale.fromAHSV(
    Value value,
  ) : super.fromAHSV(
        Alpha.dfAlpha,
        Hue.dfHue,
        Saturation.gray,
        value,
      );
}
// #endregion

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
    this.family,
    this.weight = FontWeight.normal,
    this.style = FontStyle.normal,
  });

  // #region 字段类型定义
  /// 字体家族
  String? family;

  /// 字重
  FontWeight weight;

  /// 字体样式
  FontStyle style;
  // #endregion
}

/// 文本字号
typedef FontSize = double;

/// 文本字间距
typedef Spacing = double;

/// 文本行高
typedef LineHeight = double;
// #endregion
