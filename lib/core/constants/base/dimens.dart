import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

/// 应用常量
class AppDimens {
  /// 文本框尺寸常量
  static TextFieldDimens get textField => TextFieldDimens();
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
  ) : super(height.value * fontsize.value * 0.3528);

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
        lenth *
            space.value *
            fontsize.value *
            Language.aspectRatio[language]! *
            0.3528,
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
        textStyle.font.language,
        lenth,
      );

  @override
  TextFieldWidth create(double value) => TextFieldWidth(value);
}

// #endregion
