import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/dev/type_defs.dart';

/// **颜色主题类**
/// 主题颜色集必须包含以下属性：
/// - 主色：BasicColors primary
/// - 主色变体：BasicColors primaryVariant
/// - 次要色：BasicColors secondary
/// - 次要色变体：BasicColors secondaryVariant
/// - 背景色：BasicColors background
/// - 表面背景色：BasicColors surface
/// - 蒙版：BasicColors mask
/// - 主文字：TxtColors onPrimary
/// - 次要文字：TxtColors onSecondary
/// - 背景文字：TxtColors onBackground
/// - 二级背景文字：TxtColors onSurface
/// - 错误：FuncColors error
/// - 成功：FuncColors success
/// - 警告：FuncColors warning
abstract class ColorTheme {
  /// 初始化用户输入的基准色
  ColorTheme(this.baseColor);

  /// 基准色，默认为AHSV(1, 62, 0.62, 0.62)
  ThemeColor baseColor;

  /// 基准色相, 默认为62
  late Hue _basehue = baseColor.hue;

  /// 主色
  BasicColor get primary => BasicColor(baseColor.colorValue);

  // #region 接口
  /// 主色变体
  BasicColor get primaryVariant;

  /// 次要色
  BasicColor get secondary;

  /// 次要色变体
  BasicColor get secondaryVariant;

  /// 背景色
  BasicColor get background;

  /// 表面背景色
  BasicColor get surface;

  /// 蒙版
  BasicColor get mask;

  /// 主文字
  TxtColor get onPrimary;

  /// 次要文字
  TxtColor get onSecondary;

  /// 背景文字
  TxtColor get onBackground;

  /// 二级背景文字
  TxtColor get onSurface;

  /// 错误
  FuncColor get error;

  /// 成功
  FuncColor get success;

  /// 警告
  FuncColor get warning;
  // #endregion

  // #region 常量
  /// 白色
  GrayScale gray0 = GrayScale.fromAHSV(Value.v96);

  /// 灰度12%
  GrayScale gray1 = GrayScale.fromAHSV(Value.v88);

  /// 灰度25%
  GrayScale gray2 = GrayScale.fromAHSV(Value.v75);

  /// 灰度38%
  GrayScale gray3 = GrayScale.fromAHSV(Value.dfValue);

  /// 灰度54%
  GrayScale gray4 = GrayScale.fromAHSV(Value.v46);

  /// 灰度76%
  GrayScale gray5 = GrayScale.fromAHSV(Value.v24);

  /// 黑色
  GrayScale gray6 = GrayScale.fromAHSV(Value.v04);
  // #endregion

  /// 改变基准色
  void changeHue(Hue newhue) {
    _basehue = newhue;
    baseColor = _resetHue(_basehue);
  }

  /// 仅设置色相，其余重置为默认值
  ThemeColor _resetHue(Hue newhue) {
    return ThemeColor(
      HSVColor.fromAHSV(
        Alpha.dfAlpha.value,
        newhue.value,
        Saturation.dfSaturation.value,
        Value.dfValue.value,
      ),
    );
  }
}
