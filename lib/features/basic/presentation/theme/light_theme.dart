import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';
import 'package:mykanban/features/basic/presentation/theme/utils/abstract_color.dart';

// #region 引用默认设置
/// 默认透明度
const double alpha = ThemeColor.alpha;

/// 默认色相
const double hue = ThemeColor.hue;

/// 默认饱和度
const double saturation = ThemeColor.saturation;

/// 默认明度
const double value = ThemeColor.value;

/// 默认主题色
double _basehue = ThemeColor.themeColor.hue;
// #endregion

/// 明亮主题类，基于一套颜色计算公式，
/// 通过用户输入的基准色primary（即primary)，
/// 计算生成一整套主题颜色。
class LightThemeColors extends ThemeColors {
  @override
  BasicColors get primaryVariant => HSVColor.fromAHSV(
    alpha * (alpha * 1.25 > 1 ? (1 / alpha) : 1.25),
    _basehue + (_basehue < 330 ? 30 : -330),
    saturation,
    value,
  ).toColor();
  @override
  BasicColors get secondary => HSVColor.fromAHSV(
    alpha * (alpha * 1.25 > 1 ? (1 / alpha) : 1.25),
    _basehue + (_basehue < 240 ? 120 : -240),
    0.38,
    0.72,
  ).toColor();
  @override
  BasicColors get secondaryVariant => HSVColor.fromAHSV(
    alpha * (alpha * 1.25 > 1 ? (1 / alpha) : 1.25),
    _basehue + (_basehue > 120 ? -120 : 240),
    0.38,
    0.72,
  ).toColor();
  @override
  BasicColors get background => HSVColor.fromAHSV(
    alpha,
    _basehue,
    0.04,
    0.96,
  ).toColor();
  @override
  BasicColors get surface => HSVColor.fromAHSV(
    1,
    _basehue + (_basehue < 180 ? 180 : -180),
    0.04,
    0.74,
  ).toColor();
  @override
  BasicColors get mask => HSVColor.fromAHSV(
    0.38 * alpha,
    _basehue + (_basehue > 180 ? -180 : 180),
    0.98,
    0.04,
  ).toColor();
  @override
  TxtColors get onPrimary => gray6;
  @override
  TxtColors get onSecondary => gray5;
  @override
  TxtColors get onBackground => HSVColor.fromAHSV(
    alpha * (alpha * 1.25 > 1 ? (1 / alpha) : 1.25),
    _basehue,
    saturation - 0.2,
    value - 0.1,
  ).toColor();
  @override
  TxtColors get onSurface => HSVColor.fromAHSV(
    1,
    _basehue,
    saturation - 0.24,
    value - 0.24,
  ).toColor();
  @override
  FuncColors get error => Colors.pink.shade800;
  @override
  FuncColors get success => Colors.lightGreen.shade800;
  @override
  FuncColors get warning => Colors.yellow.shade800;
}
