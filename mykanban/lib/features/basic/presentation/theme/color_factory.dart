import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

// 相关常量和函数定义
/// 默认透明度
const double alpha = 1;

/// 默认色相
const double hue = 62;

/// 默认饱和度
const double saturation = 0.58;

/// 默认明度
const double value = 0.62;

/// 默认主题色
const HSVColor themeColor = HSVColor.fromAHSV(
  alpha,
  hue,
  saturation,
  value,
);

/// 仅设置色相，其余重置为默认值
HSVColor resetHue(double newhue) {
  return HSVColor.fromAHSV(
    alpha,
    newhue,
    saturation,
    value,
  );
}

/// 主题颜色工厂
class ColorFactory {
  /// 明亮主题
  static ThemeColors get light => LightThemeColors();

  /// 黑暗主题
  static ThemeColors get dark => DarkThemeColors();
}

/// 主题颜色集必须包含以下属性：
/// - 主色：primary
/// - 主色变体：primaryVariant
/// - 次要色：secondary
/// - 次要色变体：secondaryVariant
/// - 背景色：background
/// - 表面背景色：surface
/// - 蒙版：mask
/// - 主文字：onPrimary
/// - 次要文字：onSecondary
/// - 背景文字：onBackground
/// - 二级背景文字：onSurface
/// - 错误：error
/// - 成功：success
/// - 警告：warning
/// 以上属性的类型均为BasicColors，TxtColors，FuncColors，GrayScale。
abstract class ThemeColors {
  /// 标准化用户输入的基准色
  ThemeColors({this.baseColor = themeColor});

  /// 主色，默认为AHSV(1, 62, 0.62, 0.62)
  HSVColor baseColor;

  /// 基准色相, 默认为98
  late double _basehue = baseColor.hue;

  /// 主色
  BasicColors get primary => baseColor.toColor();

  /// 主色变体
  BasicColors get primaryVariant;

  /// 次要色
  BasicColors get secondary;

  /// 次要色变体
  BasicColors get secondaryVariant;

  /// 背景色
  BasicColors get background;

  /// 表面背景色
  BasicColors get surface;

  /// 蒙版
  BasicColors get mask;

  /// 主文字
  TxtColors get onPrimary;

  /// 次要文字
  TxtColors get onSecondary;

  /// 背景文字
  TxtColors get onBackground;

  /// 二级背景文字
  TxtColors get onSurface;

  /// 错误
  FuncColors get error;

  /// 成功
  FuncColors get success;

  /// 警告
  FuncColors get warning;

  /// 白色
  GrayScale gray0 = const HSVColor.fromAHSV(1, 0, 0, 0.96).toColor();

  /// 灰度12%
  GrayScale gray1 = const HSVColor.fromAHSV(1, 0, 0, 0.88).toColor();

  /// 灰度25%
  GrayScale gray2 = const HSVColor.fromAHSV(1, 0, 0, 0.75).toColor();

  /// 灰度38%
  GrayScale gray3 = const HSVColor.fromAHSV(1, 0, 0, 0.62).toColor();

  /// 灰度54%
  GrayScale gray4 = const HSVColor.fromAHSV(1, 0, 0, 0.46).toColor();

  /// 灰度76%
  GrayScale gray5 = const HSVColor.fromAHSV(1, 0, 0, 0.24).toColor();

  /// 黑色
  GrayScale gray6 = const HSVColor.fromAHSV(1, 0, 0, 0.04).toColor();

  /// 改变基准色
  void changeHue(double newhue) {
    _basehue = newhue;
    baseColor = resetHue(_basehue);
  }
}

/// 明亮主题类，基于一套颜色计算公式，
/// 通过用户输入的基准色primary（即primary)，
/// 计算生成一整套主题颜色。
class LightThemeColors extends ThemeColors {
  @override
  BasicColors get primaryVariant => HSVColor.fromAHSV(
    alpha * (alpha * 1.25 > 1 ? (1 / alpha) : 1.25),
    _basehue + (_basehue < 330 ? 30 : -330),
    saturation,
    value,
  ).toColor();
  @override
  BasicColors get secondary => HSVColor.fromAHSV(
    alpha * (alpha * 1.25 > 1 ? (1 / alpha) : 1.25),
    _basehue + (_basehue < 240 ? 120 : -240),
    0.38,
    0.72,
  ).toColor();
  @override
  BasicColors get secondaryVariant => HSVColor.fromAHSV(
    alpha * (alpha * 1.25 > 1 ? (1 / alpha) : 1.25),
    _basehue + (_basehue > 120 ? -120 : 240),
    0.38,
    0.72,
  ).toColor();
  @override
  BasicColors get background => HSVColor.fromAHSV(
    alpha,
    _basehue,
    0.04,
    0.96,
  ).toColor();
  @override
  BasicColors get surface => HSVColor.fromAHSV(
    1,
    _basehue + (_basehue < 180 ? 180 : -180),
    0.04,
    0.74,
  ).toColor();
  @override
  BasicColors get mask => HSVColor.fromAHSV(
    0.38 * alpha,
    _basehue + (_basehue > 180 ? -180 : 180),
    0.98,
    0.04,
  ).toColor();
  @override
  TxtColors get onPrimary => gray6;
  @override
  TxtColors get onSecondary => gray5;
  @override
  TxtColors get onBackground => HSVColor.fromAHSV(
    alpha * (alpha * 1.25 > 1 ? (1 / alpha) : 1.25),
    _basehue,
    saturation - 0.2,
    value - 0.1,
  ).toColor();
  @override
  TxtColors get onSurface => HSVColor.fromAHSV(
    1,
    _basehue,
    saturation - 0.24,
    value - 0.24,
  ).toColor();
  @override
  FuncColors get error => Colors.pink.shade800;
  @override
  FuncColors get success => Colors.lightGreen.shade800;
  @override
  FuncColors get warning => Colors.yellow.shade800;
}

/// 黑暗主题类，基于一套颜色计算公式，
/// 通过用户输入的基准色primary（即primary)，
/// 计算生成一整套主题颜色。
class DarkThemeColors extends ThemeColors {
  @override
  BasicColors get primary => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue,
    saturation + 0.08,
    value + 0.22,
  ).toColor();
  @override
  BasicColors get primaryVariant => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue + (_basehue < 330 ? 30 : -330),
    saturation + 0.08,
    value + 0.22,
  ).toColor();
  @override
  BasicColors get secondary => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue + (_basehue < 240 ? 120 : -240),
    0.30,
    0.72,
  ).toColor();
  @override
  BasicColors get secondaryVariant => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue + (_basehue > 120 ? -120 : 240),
    0.30,
    0.72,
  ).toColor();
  @override
  BasicColors get background => HSVColor.fromAHSV(
    alpha,
    _basehue,
    0.04,
    0.14,
  ).toColor();
  @override
  BasicColors get surface => HSVColor.fromAHSV(
    1,
    _basehue + (_basehue < 180 ? 180 : -180),
    0.04,
    0.36,
  ).toColor();
  @override
  BasicColors get mask => HSVColor.fromAHSV(
    alpha * 0.54,
    _basehue + (_basehue > 180 ? -180 : 180),
    0.76,
    0.04,
  ).toColor();
  @override
  TxtColors get onPrimary => gray0;
  @override
  TxtColors get onSecondary => gray2;
  @override
  TxtColors get onBackground => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue,
    saturation - 0.12,
    value + 0.2,
  ).toColor();
  @override
  TxtColors get onSurface => HSVColor.fromAHSV(
    1,
    _basehue,
    saturation - 0.16,
    value + 0.34,
  ).toColor();
  @override
  FuncColors get error => Colors.red.shade400;
  @override
  FuncColors get success => Colors.green.shade400;
  @override
  FuncColors get warning => Colors.yellowAccent.shade400;
}
