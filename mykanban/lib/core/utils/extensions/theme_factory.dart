import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/default_colors.dart';

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
  /// 基础：主色
  Color get primary;

  /// 基础：主色变体
  Color get primaryVariant;

  /// 基础：次要色
  Color get secondary;

  /// 基础：次要色变体
  Color get secondaryVariant;

  /// 基础：背景
  Color get background;

  /// 基础：二级背景
  Color get surface;

  /// 文本：主文字
  Color get onPrimary;

  /// 文本：次要文字
  Color get onSecondary;

  /// 文本：背景文字
  Color get onBackground;

  /// 文本：二级背景文字
  Color get onSurface;

  /// 功能：错误
  Color get error;

  /// 功能：成功
  Color get success;

  /// 功能：警告
  Color get warning;

  /// 灰度：透明
  static const Color gray0 = Colors.transparent;

  /// 灰度：12%
  static const Color gray1 = Colors.black12;

  /// 灰度：26%
  static const Color gray2 = Colors.black26;

  /// 灰度：38%
  static const Color gray3 = Colors.black38;

  /// 灰度：54%
  static const Color gray4 = Colors.black54;

  /// 灰度：87%
  static const Color gray5 = Colors.black87;

  /// 灰度：100%
  static const Color gray6 = Colors.black;
}

// TODO(Anorangewolf): 请根据设计师要求补全计算公式，注意LightTheme和DarkTheme是两套公式。
/// 明亮主题类，包含了一整套颜色
class LightTheme extends ThemeData {
  /// 明亮主题，基于一套颜色计算公式，通过用户输入的基准色basecolor（即primary)，计算生成主题。
  LightTheme({this.basecolor = DefaultColors.defaultTheme});

  /// 基准色, 默认为ARGB(255, 20, 160, 90)
  final Color basecolor;

  @override
  Color get primary => basecolor;
  @override
  Color get primaryVariant => basecolor;
  @override
  Color get secondary => basecolor;
  @override
  Color get secondaryVariant => basecolor;
  @override
  Color get background => basecolor;
  @override
  Color get surface => basecolor;
  @override
  Color get onPrimary => Colors.white;
  @override
  Color get onSecondary => Colors.white;
  @override
  Color get onBackground => Colors.white;
  @override
  Color get onSurface => Colors.white;
  @override
  Color get error => Colors.red;
  @override
  Color get success => Colors.green;
  @override
  Color get warning => Colors.yellow;
}

/// 黑暗主题类，包含了一整套颜色
class DarkTheme extends ThemeData {
  /// 黑暗主题，基于一套颜色计算公式，通过用户输入的基准色basecolor（即primary)，计算生成主题。
  DarkTheme({this.basecolor = DefaultColors.defaultTheme});

  /// 基准色, 默认为ARGB(255, 20, 160, 90)
  final Color basecolor;

  @override
  Color get primary => basecolor;
  @override
  Color get primaryVariant => basecolor;
  @override
  Color get secondary => basecolor;
  @override
  Color get secondaryVariant => basecolor;
  @override
  Color get background => basecolor;
  @override
  Color get surface => basecolor;
  @override
  Color get onPrimary => Colors.white;
  @override
  Color get onSecondary => Colors.white;
  @override
  Color get onBackground => Colors.white;
  @override
  Color get onSurface => Colors.white;
  @override
  Color get error => Colors.red;
  @override
  Color get success => Colors.green;
  @override
  Color get warning => Colors.yellow;
}
