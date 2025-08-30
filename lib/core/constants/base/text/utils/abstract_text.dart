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
  /// 标题
  Font get headline1;

  /// 小标题
  Font get title;

  /// 正文
  Font get bodyPrimary;

  /// 正文加粗
  Font get bodyBold;

  /// 正文斜体
  Font get bodyItalic;
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
  FontSize get xxxSmall => const FontSize(5);

  /// 加加小
  FontSize get xxSmall => const FontSize(6.5);

  /// 加小
  FontSize get xSmall => const FontSize(8);

  /// 小
  FontSize get small => const FontSize(10);

  /// 小（特殊）
  FontSize get spSmall => const FontSize(9);

  /// 常用1
  FontSize get normal => const FontSize(11);

  /// 常用2
  FontSize get spNormal => const FontSize(12);

  /// 中
  FontSize get medium => const FontSize(16);

  /// 中（特殊）
  FontSize get spMedium => const FontSize(18);

  /// 大
  FontSize get large => const FontSize(28);

  /// 大（特殊）
  FontSize get spLarge => const FontSize(24);

  /// 加大
  FontSize get xLarge => const FontSize(36);

  /// 加加大
  FontSize get xxLarge => const FontSize(48);

  /// 加加加大
  FontSize get xxxLarge => const FontSize(72);

  /// 巨无霸
  FontSize get huge => const FontSize(96);

  /// 巨无霸（特殊）
  FontSize get spHuge => const FontSize(118);
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
  Spacing get xsmall => const Spacing(0.75);

  /// 窄
  Spacing get small => const Spacing(1.5);

  /// 常用
  Spacing get normal => const Spacing(2);

  /// 中
  Spacing get medium => const Spacing(4);

  /// 宽
  Spacing get large => const Spacing(5);

  /// 极宽
  Spacing get xlarge => const Spacing(8);
}

/// **行高类**
/// 行高类包含了应用中使用的行高信息，以倍数的形式表示
abstract class LineHeights {
  /// 单倍行距
  LineHeight get small => const LineHeight(1);

  /// 1.1倍行距
  LineHeight get spSmall => const LineHeight(1.1);

  /// 常用
  LineHeight get normal => const LineHeight(1.2);

  /// 1.25倍行距
  LineHeight get spNormal => const LineHeight(1.25);

  /// 1.5倍行距
  LineHeight get medium => const LineHeight(1.5);

  /// 1.6倍行距
  LineHeight get spMedium => const LineHeight(1.6);

  /// 1.75倍行距
  LineHeight get spLarge => const LineHeight(1.75);

  /// 2倍行距
  LineHeight get large => const LineHeight(2);
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
    fontSize: fontSize.value,
    letterSpacing: letterSpacing.value,
    height: height.value,
  );
}

/// **文本格式类**
/// 直接用的，根据实际情况添加，类型务必具体到使用场景
/// 例如：loginPageWelcome
abstract class TextStyles {
  /// 登陆界面按钮
  TextStyle get loginPageButton;
}
