import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

/// 简体中文字体
class ZhCnFonts extends Fonts {
  @override
  Font get headline1 => Font(
    family: 'NotoSans',
    weight: FontWeight.w900,
  );
  @override
  Font get title => Font(
    family: 'NotoSans',
  );
  @override
  Font get bodyPrimary => Font(
    family: 'NotoSans',
    weight: FontWeight.w200,
  );
  @override
  Font get bodyBold => Font(
    weight: FontWeight.w300,
  );
  @override
  Font get bodyItalic => Font(
    family: 'NotoSans',
    weight: FontWeight.w200,
    style: FontStyle.italic,
  );
}

/// 简体中文字体大小
class ZhCnFontSizes extends FontSizes {}

/// 简体中文字间距
class ZhCnSpacings extends Spacings {}

/// 简体中文行高
class ZhCnLineHeights extends LineHeights {}

// #region 实例化
/// 简体中文字体集
ZhCnFonts f = ZhCnFonts();

/// 简体中文字体大小集
ZhCnFontSizes s = ZhCnFontSizes();

/// 简体中文字间距集
ZhCnSpacings sp = ZhCnSpacings();

/// 简体中文行高集
ZhCnLineHeights h = ZhCnLineHeights();
// #endregion

/// 简体中文文本格式
class ZhCnTextStyles extends TextStyles {
  @override
  TextStyle get loginPageButton => temp();
}

// HACK(Anorangewolf): 临时占位避免报错，必须修改.
/// 临时占位
TextStyle temp() {
  return const TextStyle();
}
