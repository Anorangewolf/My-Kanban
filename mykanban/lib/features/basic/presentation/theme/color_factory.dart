import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

// 相关常量和函数定义
/// 默认透明度
const double alpha = 1;

/// 默认色相
const double hue = 62;

/// 默认饱和度
const double saturation = 0.62;

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
/// - 二级背景色：surface
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

  /// 二级背景色
  BasicColors get surface;

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
  GrayScale gray0 = const HSVColor.fromAHSV(1, 0, 0, 1).toColor();

  /// 灰度12%
  GrayScale gray1 = const HSVColor.fromAHSV(1, 0, 0, 0.88).toColor();

  /// 灰度26%
  GrayScale gray2 = const HSVColor.fromAHSV(1, 0, 0, 0.74).toColor();

  /// 灰度38%
  GrayScale gray3 = const HSVColor.fromAHSV(1, 0, 0, 0.62).toColor();

  /// 灰度54%
  GrayScale gray4 = const HSVColor.fromAHSV(1, 0, 0, 0.46).toColor();

  /// 灰度87%
  GrayScale gray5 = const HSVColor.fromAHSV(1, 0, 0, 0.13).toColor();

  /// 黑色
  GrayScale gray6 = const HSVColor.fromAHSV(1, 0, 0, 0).toColor();

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
  // TODO(Anorangewolf): 写公式，可直接设置明度和饱和度，计算色相即可.
  @override
  BasicColors get primaryVariant => HSVColor.fromAHSV(
    alpha,
    _basehue + 30,
    saturation,
    value,
  ).toColor();
  @override
  BasicColors get secondary => primary;
  @override
  BasicColors get secondaryVariant => primary;
  @override
  BasicColors get background => primary;
  @override
  BasicColors get surface => primary;
  @override
  TxtColors get onPrimary => primary;
  @override
  TxtColors get onSecondary => primary;
  @override
  TxtColors get onBackground => primary;
  @override
  TxtColors get onSurface => primary;
  @override
  FuncColors get error => primary;
  @override
  FuncColors get success => primary;
  @override
  FuncColors get warning => primary;
}

/// 黑暗主题类，基于一套颜色计算公式，
/// 通过用户输入的基准色primary（即primary)，
/// 计算生成一整套主题颜色。
class DarkThemeColors extends ThemeColors {
  // TODO(Anorangewolf): 这里也要写公式，注意和明亮主题的明度和饱和度设置逻辑不同.
  @override
  BasicColors get primaryVariant => primary;
  @override
  BasicColors get secondary => primary;
  @override
  BasicColors get secondaryVariant => primary;
  @override
  BasicColors get background => primary;
  @override
  BasicColors get surface => primary;
  @override
  TxtColors get onPrimary => primary;
  @override
  TxtColors get onSecondary => primary;
  @override
  TxtColors get onBackground => primary;
  @override
  TxtColors get onSurface => primary;
  @override
  FuncColors get error => primary;
  @override
  FuncColors get success => primary;
  @override
  FuncColors get warning => primary;
}
