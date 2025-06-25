import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/default_colors.dart';

// REWRITE(Anorangewolf): 可能有性能瓶颈，考虑工厂函数.
/// 主题工厂类
class ThemeFactory {
  /// 明亮主题
  static ThemeData light = LightTheme();

  /// 黑暗主题
  static ThemeData dark = DarkTheme();
}

/// 主题必须包含以下属性：
/// - primary
/// - primaryVariant
/// - secondary
/// - secondaryVariant
/// - background
/// - surface
/// - onPrimary
/// - onSecondary
/// - onBackground
/// - onSurface
/// - error
/// - success
/// - warning
abstract class ThemeData {
  /// 标准化用户输入的基准色
  ThemeData({this.basecolor = DefaultColors.defaultTheme});

  /// 基准色, 默认为HSV(98, 0.75, 0.75)
  HSVColor basecolor;

  /// 基础：主色
  HSVColor get primary => basecolor;

  /// 基础：主色变体
  HSVColor get primaryVariant;

  /// 基础：次要色
  HSVColor get secondary;

  /// 基础：次要色变体
  HSVColor get secondaryVariant;

  /// 基础：背景
  HSVColor get background;

  /// 基础：二级背景
  HSVColor get surface;

  /// 文本：主文字
  HSVColor get onPrimary;

  /// 文本：次要文字
  HSVColor get onSecondary;

  /// 文本：背景文字
  HSVColor get onBackground;

  /// 文本：二级背景文字
  HSVColor get onSurface;

  /// 功能：错误
  HSVColor get error;

  /// 功能：成功
  HSVColor get success;

  /// 功能：警告
  HSVColor get warning;

  /// 灰度：透明
  static const HSVColor gray0 = HSVColor.fromAHSV(1, 0, 0, 1);

  /// 灰度：12%
  static const HSVColor gray1 = HSVColor.fromAHSV(1, 0, 0, 0.88);

  /// 灰度：26%
  static const HSVColor gray2 = HSVColor.fromAHSV(1, 0, 0, 0.74);

  /// 灰度：38%
  static const HSVColor gray3 = HSVColor.fromAHSV(1, 0, 0, 0.62);

  /// 灰度：54%
  static const HSVColor gray4 = HSVColor.fromAHSV(1, 0, 0, 0.46);

  /// 灰度：87%
  static const HSVColor gray5 = HSVColor.fromAHSV(1, 0, 0, 0.13);

  /// 灰度：100%
  static const HSVColor gray6 = HSVColor.fromAHSV(1, 0, 0, 0);

  /// 修改主色
  set primary(HSVColor newBase) {
    primary = newBase;
  }
}

/// 明亮主题类，基于一套颜色计算公式，
/// 通过用户输入的基准色basecolor（即primary)，
/// 计算生成一整套主题颜色。
class LightTheme extends ThemeData {
  @override
  HSVColor get primary => basecolor;
  @override
  HSVColor get primaryVariant => basecolor;
  @override
  HSVColor get secondary => basecolor;
  @override
  HSVColor get secondaryVariant => basecolor;
  @override
  HSVColor get background => basecolor;
  @override
  HSVColor get surface => basecolor;
  @override
  HSVColor get onPrimary => basecolor;
  @override
  HSVColor get onSecondary => basecolor;
  @override
  HSVColor get onBackground => basecolor;
  @override
  HSVColor get onSurface => basecolor;
  @override
  HSVColor get error => basecolor;
  @override
  HSVColor get success => basecolor;
  @override
  HSVColor get warning => basecolor;
}

/// 黑暗主题类，基于一套颜色计算公式，
/// 通过用户输入的基准色basecolor（即primary)，
/// 计算生成一整套主题颜色。
class DarkTheme extends ThemeData {
  @override
  HSVColor get primary => basecolor;
  @override
  HSVColor get primaryVariant => basecolor;
  @override
  HSVColor get secondary => basecolor;
  @override
  HSVColor get secondaryVariant => basecolor;
  @override
  HSVColor get background => basecolor;
  @override
  HSVColor get surface => basecolor;
  @override
  HSVColor get onPrimary => basecolor;
  @override
  HSVColor get onSecondary => basecolor;
  @override
  HSVColor get onBackground => basecolor;
  @override
  HSVColor get onSurface => basecolor;
  @override
  HSVColor get error => basecolor;
  @override
  HSVColor get success => basecolor;
  @override
  HSVColor get warning => basecolor;
}
