import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

/// Fonts for American English
class EnUsFonts extends Fonts {
  @override
  Font get headline1 => Font(
    weight: FontWeight.w700,
  );
  @override
  Font get headline2 => Font(
    weight: FontWeight.w600,
  );
  @override
  Font get title => Font(
    weight: FontWeight.w500,
  );
  @override
  Font get bodyPrimary => Font(
    weight: FontWeight.w300,
  );
  @override
  Font get bodyBold => Font(
  );
  @override
  Font get bodyItalic => Font(
    weight: FontWeight.w300,
    style: FontStyle.italic,
  );
  @override
  Font get decorative1 => Font(
    family: 'NotoSerif',
    weight: FontWeight.w900,
  );
  @override
  Font get decorative2 => Font(
    family: 'NotoSerif',
    weight: FontWeight.w700,
  );
}

/// FontSizes for American English
class EnUsFontSizes extends FontSizes {}

/// Spacings for American English
class EnUsSpacings extends Spacings {}

/// LineHeights for American English
class EnUsLineHeights extends LineHeights {}

// #region 实例化
/// American English Fonts
EnUsFonts f = EnUsFonts();

/// American English FontSizes
EnUsFontSizes s = EnUsFontSizes();

/// American English Spacings
EnUsSpacings sp = EnUsSpacings();

/// American English LineHeights
EnUsLineHeights h = EnUsLineHeights();
// #endregion


/// Text styles for American English language
class EnUsTextStyles extends TextStyles {
  @override
  TextStyle get loginPageButton => temp();
  @override
  TextStyle get logo => temp();
}

// HACK(Anorangewolf): 临时占位避免报错，必须修改.
/// 临时占位
TextStyle temp() {
  return const TextStyle();
}
