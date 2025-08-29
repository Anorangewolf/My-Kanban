import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

/// Fonts for American English
class EnUsFonts extends Fonts {
  @override
  Font get headline1 => Font(
    family: 'Roboto',
    weight: FontWeight.w500,
  );
  @override
  Font get headline2 => Font(family: 'Roboto');
  @override
  Font get headlineSP => Font(family: 'Roboto');
  @override
  Font get title => Font(family: 'Roboto');
  @override
  Font get titleSP => Font(family: 'Roboto');
  @override
  Font get bodyPrimary => Font(family: 'Roboto');
  @override
  Font get bodySecondary => Font(family: 'Roboto');
  @override
  Font get bodyBold => Font(family: 'Roboto', weight: FontWeight.bold);
  @override
  Font get bodyItalic => Font(family: 'Roboto', style: FontStyle.italic);
  @override
  Font get decorative1 => Font(family: 'Roboto');
  @override
  Font get decorative2 => Font(family: 'Roboto');
}

/// Text styles for American English language
class EnUsTextStyles extends TextStyles {
  @override
  TextStyle get loginPageButton => temp();
}

// HACK(Anorangewolf): 临时占位避免报错，必须修改.
/// 临时占位
TextStyle temp() {
  return const TextStyle();
}
