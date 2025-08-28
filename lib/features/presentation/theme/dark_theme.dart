import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';
import 'package:mykanban/features/presentation/theme/utils/abstract_color.dart';

// #region 引用默认设置
/// 默认透明度
const Alpha alpha = Alpha.dfAlpha;

/// 默认色相
const Hue hue = Hue.dfHue;

/// 默认饱和度
const Saturation saturation = Saturation.dfSaturation;

/// 默认明度
const Value value = Value.dfValue;

/// 默认主题色
Hue _basehue = ThemeColor.dfThemeColor.hue;
// #endregion

/// 黑暗主题，基于一套颜色计算公式，
/// 通过用户输入的基准色primary（即primary)，
/// 计算生成一整套主题颜色。
class DarkColorTheme extends ColorTheme {
  /// 黑暗主题
  DarkColorTheme(super.baseColor);

  @override
  BasicColor get primary => BasicColor.fromAHSV(
    alpha * 1.25 > 1
        ? Alpha.dfAlpha
        : (alpha * 1.25 < 0.8 ? const Alpha(0.8) : alpha * 1.25),
    _basehue,
    saturation + 0.08,
    value + 0.22,
  );
  @override
  BasicColor get primaryVariant => BasicColor.fromAHSV(
    alpha * 1.25 > 1
        ? Alpha.dfAlpha
        : (alpha * 1.25 < 0.8 ? const Alpha(0.8) : alpha * 1.25),
    _basehue + (_basehue < 330 ? 30 : -330),
    saturation + 0.08,
    value + 0.22,
  );
  @override
  BasicColor get secondary => BasicColor.fromAHSV(
    alpha * 1.25 > 1
        ? Alpha.dfAlpha
        : (alpha * 1.25 < 0.8 ? const Alpha(0.8) : alpha * 1.25),
    _basehue + (_basehue < 240 ? 120 : -240),
    Saturation.s30,
    const Value(0.72),
  );
  @override
  BasicColor get secondaryVariant => BasicColor.fromAHSV(
    alpha * 1.25 > 1
        ? Alpha.dfAlpha
        : (alpha * 1.25 < 0.8 ? const Alpha(0.8) : alpha * 1.25),
    _basehue + (_basehue > 120 ? -120 : 240),
    Saturation.s30,
    const Value(0.72),
  );
  @override
  BasicColor get background => BasicColor.fromAHSV(
    alpha,
    _basehue,
    Saturation.s04,
    const Value(0.14),
  );
  @override
  BasicColor get surface => BasicColor.fromAHSV(
    Alpha.dfAlpha,
    _basehue + (_basehue < 180 ? 180 : -180),
    Saturation.s04,
    const Value(0.36),
  );
  @override
  BasicColor get mask => BasicColor.fromAHSV(
    alpha * 0.54,
    _basehue + (_basehue > 180 ? -180 : 180),
    Saturation.s76,
    Value.v04,
  );
  @override
  TxtColor get onPrimary => TxtColor(gray0.colorValue);
  @override
  TxtColor get onSecondary => TxtColor(gray2.colorValue);
  @override
  TxtColor get onBackground => TxtColor.fromAHSV(
    alpha * 1.25 > 1
        ? Alpha.dfAlpha
        : (alpha * 1.25 < 0.8 ? const Alpha(0.8) : alpha * 1.25),
    _basehue,
    saturation - 0.12,
    value + 0.2,
  );
  @override
  TxtColor get onSurface => TxtColor.fromAHSV(
    Alpha.dfAlpha,
    _basehue,
    saturation - 0.16,
    value + 0.34,
  );
  @override
  FuncColor get error => FuncColor.fromColor(Colors.red.shade400);
  @override
  FuncColor get success => FuncColor.fromColor(Colors.green.shade400);
  @override
  FuncColor get warning => FuncColor.fromColor(Colors.yellowAccent.shade400);
}
