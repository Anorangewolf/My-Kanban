import 'package:mykanban/core/constants/dev/type_defs.dart';
import 'package:mykanban/features/presentation/theme/dark_theme.dart';
import 'package:mykanban/features/presentation/theme/light_theme.dart';
import 'package:mykanban/features/presentation/theme/utils/abstract_color.dart';

/// 颜色样式
class ColorFactory {
  /// 明亮主题
  static ColorTheme light(ThemeColor basecolor) {
    return LightColorTheme(basecolor);
  }

  /// 黑暗主题
  static ColorTheme dark(ThemeColor basecolor) {
    return DarkColorTheme(basecolor);
  }

  /// 主题工厂(国际化预留)
  static ColorTheme fac(ThemeColor basecolor) {
    return LightColorTheme(basecolor);
  }
}

// #region 实例化
/// 应用的颜色主题
ColorTheme colTheme = ColorFactory.fac(
  ThemeColor.dfThemeColor,
);
// #endregion
