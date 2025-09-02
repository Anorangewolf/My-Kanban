import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

/// 简体中文字体
class ZhCnFonts extends Fonts {
  @override
  Font get headline1 => Font(
    family: 'NotoSansSC',
    weight: FontWeight.w800,
  );
  @override
  Font get headline2 => Font(
    family: 'NotoSansSC',
    weight: FontWeight.w700,
  );
  @override
  Font get title => Font(
    family: 'NotoSansSC',
    weight: FontWeight.w600,
  );
  @override
  Font get bodyPrimary => Font(
    family: 'NotoSansSC',
  );
  @override
  Font get bodyBold => Font(
    family: 'NotoSansSC',
    weight: FontWeight.w500,
  );
  @override
  Font get bodyItalic => Font(
    family: 'NotoSansSC',
    style: FontStyle.italic,
  );
  @override
  Font get decorative1 => Font(
    family: 'NotoSerifSC',
    weight: FontWeight.w900,
  );
  @override
  Font get decorative2 => Font(
    family: 'NotoSerifSC',
    weight: FontWeight.w700,
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
  TextStyle get loginPageButton => dfCustomTxtSt(
    f.bodyPrimary,
    s.medium,
    sp.split,
    h.normal,
  );
  @override
  TextStyle get logo => customTxtSt(
    f.headline2,
    s.large,
    sp.normal,
    h.normal,
    TxtColor(colTheme.gray0.colorValue),
  );
}
