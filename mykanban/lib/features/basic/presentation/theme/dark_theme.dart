import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';
import 'package:mykanban/features/basic/presentation/theme/color_factory.dart';

// #region ����Ĭ������
/// Ĭ��͸����
const double alpha = ThemeColor.alpha;

/// Ĭ��ɫ��
const double hue = ThemeColor.hue;

/// Ĭ�ϱ��Ͷ�
const double saturation = ThemeColor.saturation;

/// Ĭ������
const double value = ThemeColor.value;

/// Ĭ������ɫ
double _basehue = ThemeColor.themeColor.hue;
// #endregion

/// �ڰ������࣬����һ����ɫ���㹫ʽ��
/// ͨ���û�����Ļ�׼ɫprimary����primary)��
/// ��������һ����������ɫ��
class DarkThemeColors extends ThemeColors {
  @override
  BasicColors get primary => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue,
    saturation + 0.08,
    value + 0.22,
  ).toColor();
  @override
  BasicColors get primaryVariant => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue + (_basehue < 330 ? 30 : -330),
    saturation + 0.08,
    value + 0.22,
  ).toColor();
  @override
  BasicColors get secondary => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue + (_basehue < 240 ? 120 : -240),
    0.30,
    0.72,
  ).toColor();
  @override
  BasicColors get secondaryVariant => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue + (_basehue > 120 ? -120 : 240),
    0.30,
    0.72,
  ).toColor();
  @override
  BasicColors get background => HSVColor.fromAHSV(
    alpha,
    _basehue,
    0.04,
    0.14,
  ).toColor();
  @override
  BasicColors get surface => HSVColor.fromAHSV(
    1,
    _basehue + (_basehue < 180 ? 180 : -180),
    0.04,
    0.36,
  ).toColor();
  @override
  BasicColors get mask => HSVColor.fromAHSV(
    alpha * 0.54,
    _basehue + (_basehue > 180 ? -180 : 180),
    0.76,
    0.04,
  ).toColor();
  @override
  TxtColors get onPrimary => gray0;
  @override
  TxtColors get onSecondary => gray2;
  @override
  TxtColors get onBackground => HSVColor.fromAHSV(
    alpha *
        (alpha * 1.25 > 1
            ? (1 / alpha)
            : (alpha * 1.25 < 0.8 ? (0.8 / alpha) : 1.25)),
    _basehue,
    saturation - 0.12,
    value + 0.2,
  ).toColor();
  @override
  TxtColors get onSurface => HSVColor.fromAHSV(
    1,
    _basehue,
    saturation - 0.16,
    value + 0.34,
  ).toColor();
  @override
  FuncColors get error => Colors.red.shade400;
  @override
  FuncColors get success => Colors.green.shade400;
  @override
  FuncColors get warning => Colors.yellowAccent.shade400;
}
