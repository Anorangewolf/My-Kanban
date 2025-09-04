import 'package:mykanban/core/constants/dev/type_defs.dart';

// TODO(Anorangewolf): 完成AppDimens工厂类的构建.
/// 尺寸常量
class AppDimens {
  /// 文本框高度
  static TextFieldHeight height(
    FontSize fontsize,
    LineHeight height,
  ) {
    return TextFieldHeight.fromFontSize(
      fontsize,
      height,
    );
  }

  /// 文本框宽度
  static TextFieldWidth width(
    FontSize fontsize,
    Spacing space,
    Language language,
    int lenth,
  ) {
    return TextFieldWidth.fromFontSize(
      fontsize,
      space,
      language,
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

  @override
  TextFieldWidth create(double value) => TextFieldWidth(value);
}
