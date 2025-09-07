import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

/// 应用常量
class AppDimens {
  /// 文本框尺寸常量
  static TextFieldDimens get textField => TextFieldDimens();

  /// Expanded Flex 常量
  static ExpandedFlexStatic get expandedFlex => ExpandedFlexStatic();

  /// EdgeInsets 常量
  static BorderStatic get border => BorderStatic();
}

// #region TextField
/// 文本框尺寸常量
class TextFieldDimens {
  /// 文本框高度
  /// 根据字体大小和行高计算文本框高度
  /// - fontSize: 字体大小
  /// - height: 行高(倍数)
  TextFieldHeight height(
    CustomTextStyle textStyle,
  ) {
    return TextFieldHeight.fromTextStyle(textStyle);
  }

  /// 文本框宽度
  /// 根据字体大小、间距、语言和平均行长度计算文本框宽度
  /// - fontsize: 字体大小
  /// - space: 间距(倍数)
  /// - language: 语言
  /// - lenth: 平均行长度
  TextFieldWidth width(
    CustomTextStyle textStyle,
    int lenth,
  ) {
    return TextFieldWidth.fromTextStyle(
      textStyle,
      lenth,
    );
  }
}

/// 文本框高度
class TextFieldHeight extends DoubleProp<TextFieldHeight> {
  /// 文本框高度
  const TextFieldHeight(super.value);

  /// 根据字体大小和行高计算文本框高度
  /// - fontSize: 字体大小
  /// - height: 行高(倍数)
  TextFieldHeight.fromFontSize(
    FontSize fontsize,
    LineHeight height,
  ) : super(height.value * fontsize.value);

  /// 根据文本样式计算文本框高度
  /// - textStyle: 文本样式
  TextFieldHeight.fromTextStyle(
    CustomTextStyle textStyle,
  ) : this.fromFontSize(
        textStyle.fontSize,
        textStyle.height,
      );

  @override
  TextFieldHeight create(double value) => TextFieldHeight(value);
}

/// 文本框宽度
class TextFieldWidth extends DoubleProp<TextFieldWidth> {
  /// 文本框宽度
  const TextFieldWidth(super.value);

  /// 根据字体大小、间距、语言和平均行长度计算文本框宽度
  /// - fontsize: 字体大小
  /// - space: 间距(倍数)
  /// - language: 语言
  /// - lenth: 平均行长度
  TextFieldWidth.fromFontSize(
    FontSize fontsize,
    Spacing space,
    Language language,
    int lenth,
  ) : super(
        0.5 *
            lenth *
            space.value *
            fontsize.value *
            Language.aspectRatio[language]!,
      );

  /// 根据文本样式和平均行长度计算文本框宽度
  /// - textStyle: 文本样式
  /// - lenth: 平均行长度
  TextFieldWidth.fromTextStyle(
    CustomTextStyle textStyle,
    int lenth,
  ) : this.fromFontSize(
        textStyle.fontSize,
        textStyle.letterSpacing,
        textStyle.language,
        lenth,
      );

  @override
  TextFieldWidth create(double value) => TextFieldWidth(value);
}
// #endregion

// #region Expanded Flex
/// Expanded Flex
class ExpandedFlex {
  /// Expanded Flex
  const ExpandedFlex(this.value);

  /// 值
  final int value;
}

/// Expanded Flex 常量
class ExpandedFlexStatic {
  /// 0.382序列4
  ExpandedFlex get a4 => const ExpandedFlex(3);

  /// 0.382序列3
  ExpandedFlex get a3 => const ExpandedFlex(8);

  /// 0.382序列2
  ExpandedFlex get a2 => const ExpandedFlex(21);

  /// 0.382序列1
  ExpandedFlex get a1 => const ExpandedFlex(55);

  /// 0.618序列4
  ExpandedFlex get b4 => const ExpandedFlex(5);

  /// 0.618序列3
  ExpandedFlex get b3 => const ExpandedFlex(8);

  /// 0.618序列2
  ExpandedFlex get b2 => const ExpandedFlex(13);

  /// 0.618序列1
  ExpandedFlex get b1 => const ExpandedFlex(21);
}
// #endregion

// #region EdgeInsets
/// 边距
class Border extends DoubleProp<Border> {
  /// 边距
  const Border(super.value);

  @override
  Border create(double value) => Border(value);
}

/// 边距常量
class BorderStatic {
  /// 4
  Border get small => const Border(8);

  /// 8
  Border get medium => const Border(16);

  /// 12
  Border get large => const Border(24);
}

// #endregion
