import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/base/text/utils/abstract_text.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';
import 'package:mykanban/features/presentation/pages/utils/page_utils.dart';

/// 简体中文字体
class ZhCnFonts extends Fonts {
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
  Font get decorative1 => Font(family: 'Roboto');
  @override
  Font get decorative2 => Font(family: 'Roboto');
}

/// 简体中文文本格式
class ZhCnTextStyles extends TextStyles {
  @override
  TextStyle get loginPageButton => TextStyle(
    color: ColorFactory.fac.onPrimary,
  );
}
