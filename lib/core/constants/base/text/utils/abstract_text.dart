import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

/// **字体类**
/// 字体类包含了应用中使用的字体信息，
/// 必须包含以下属性：
/// - 标题字体1：headline1
/// - 标题字体2：headline2
/// - 特殊标题字体：headlineSP
/// - 小标题字体：title
/// - 特殊小标题字体：titleSP
/// - 正文主字体：bodyPrimary
/// - 正文辅助字体：bodySecondary
/// - 装饰性文字字体1：decorative1
/// - 装饰性文字字体2：decorative2
/// 字体属于Font类，数据格式见Font类注释。
abstract class Fonts {
  /// 标题字体1，字号大于48时使用
  Font get headline1;

  /// 标题字体2，字号介于24-48之间时使用
  Font get headline2;

  /// 特殊标题字体，应用显示范围受限，标题字号小于24时使用
  Font get headlineSP;

  /// 小标题字体
  Font get title;

  /// 特殊小标题字体，应用显示范围受限，小标题字号小于12时使用
  Font get titleSP;

  /// 正文主字体
  Font get bodyPrimary;

  /// 正文辅助字体
  Font get bodySecondary;

  /// 装饰性文字字体1
  Font get decorative1;

  /// 装饰性文字字体2
  Font get decorative2;
}

/// **字号类**
/// 字号类包含了应用中使用的字号信息，
/// 必须包含以下属性：
/// - 加加加小：xxxSmall
/// - 加加小：xxSmall
/// - 加小：xSmall
/// - 小：small
/// - 小（特殊）：spSmall
/// - 常用1：normal
/// - 常用2：spNormal
/// - 中：medium
/// - 中（特殊）：spMedium
/// - 大：large
/// - 大（特殊）：spLarge
/// - 加大：xLarge
/// - 加加大：xxLarge
/// - 加加加大：xxxLarge
/// - 巨无霸：huge
/// - 巨无霸（特殊）：spHuge
abstract class FontSizes {
  /// 加加加小
  FontSize get xxxSmall => 5;

  /// 加加小
  FontSize get xxSmall => 6.5;

  /// 加小
  FontSize get xSmall => 8;

  /// 小
  FontSize get small => 10;

  /// 小（特殊）
  FontSize get spSmall => 9;

  /// 常用1
  FontSize get normal => 11;

  /// 常用2
  FontSize get spNormal => 12;

  /// 中
  FontSize get medium => 16;

  /// 中（特殊）
  FontSize get spMedium => 18;

  /// 大
  FontSize get large => 28;

  /// 大（特殊）
  FontSize get spLarge => 24;

  /// 加大
  FontSize get xLarge => 36;

  /// 加加大
  FontSize get xxLarge => 48;

  /// 加加加大
  FontSize get xxxLarge => 72;

  /// 巨无霸
  FontSize get huge => 96;

  /// 巨无霸（特殊）
  FontSize get spHuge => 118;
}

/// **字符间距类**
/// 字符间距类包含了应用中使用的字符间距信息，
/// 必须包含以下属性：
/// - 极窄：xSmall
/// - 窄：small
/// - 常用：normal
/// - 中：medium
/// - 宽：large
/// - 极宽：xLarge
abstract class Spacings {
  /// 极窄
  Spacing get xSmall => 0.75;

  /// 窄
  Spacing get small => 1.5;

  /// 常用
  Spacing get normal => 2;

  /// 中
  Spacing get medium => 4;

  /// 宽
  Spacing get large => 5;

  /// 极宽
  Spacing get xLarge => 8;
}

/// **行高类**
/// 行高类包含了应用中使用的行高信息，以倍数的形式表示
abstract class LineHeights {
  /// 单倍行距
  LineHeight get small => 1;

  /// 1.1倍行距
  LineHeight get spSmall => 1.1;

  /// 常用
  LineHeight get normal => 1.2;

  /// 1.25倍行距
  LineHeight get spNormal => 1.25;

  /// 1.5倍行距
  LineHeight get medium => 1.5;

  /// 1.6倍行距
  LineHeight get spMedium => 1.6;

  /// 1.75倍行距
  LineHeight get spLarge => 1.75;

  /// 2倍行距
  LineHeight get large => 2;
}

/// 文本样式
TextStyle customTextStyle(
  Font font,
  FontSize fontSize,
  Spacing letterSpacing,
  LineHeight height,
) {
  return TextStyle(
    fontFamily: font.family,
    fontWeight: font.weight,
    fontStyle: font.style,
    fontSize: fontSize,
    letterSpacing: letterSpacing,
    height: height,
  );
}

/// **文本格式类**
/// 直接用的，根据实际情况添加，类型务必具体到使用场景
/// 例如：loginPageWelcome
abstract class TextStyles {
  /// 登陆界面按钮
  TextStyle get loginPageButton;
}
