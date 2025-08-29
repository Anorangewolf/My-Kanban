import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

/// 简体中文字体
class ZhCnFonts extends Fonts {
  @override
  Font get headline1 => Font(
    weight: FontWeight.w800,
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
  Font get decorative1 => Font(family: 'Roboto');
  @override
  Font get decorative2 => Font(family: 'Roboto');
}

/// 简体中文文本格式
class ZhCnTextStyles extends TextStyles {
  @override
  TextStyle get loginPageButton => temp();
}

// REWRITE(Anorangewolf): 临时占位避免报错，必须修改.
/// 临时占位
TextStyle temp() {
  return const TextStyle();
}
