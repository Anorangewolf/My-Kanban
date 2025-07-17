import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';
import 'package:mykanban/features/basic/presentation/theme/dark_theme.dart';
import 'package:mykanban/features/basic/presentation/theme/light_theme.dart';

/// 相关常量和函数定义
class ThemeColor {
  /// 默认透明度
  static const double alpha = 1;

  /// 默认色相
  static const double hue = 62;

  /// 默认饱和度
  static const double saturation = 0.58;

  /// 默认明度
  static const double value = 0.62;

  /// 默认主题色
  static const HSVColor themeColor = HSVColor.fromAHSV(
    alpha,
    hue,
    saturation,
    value,
  );
}

/// 仅设置色相，其余重置为默认值
HSVColor resetHue(double newhue) {
  return HSVColor.fromAHSV(
    ThemeColor.alpha,
    newhue,
    ThemeColor.saturation,
    ThemeColor.value,
  );
}

/// 主题颜色工厂
class ColorFactory {
  /// 明亮主题
  static ThemeColors get light => LightThemeColors();

  /// 黑暗主题
  static ThemeColors get dark => DarkThemeColors();
}

/// **主题类**
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
  ThemeColors({this.baseColor = ThemeColor.themeColor});

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
