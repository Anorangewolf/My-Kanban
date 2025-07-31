import 'package:mykanban/features/basic/presentation/theme/dark_theme.dart';
import 'package:mykanban/features/basic/presentation/theme/light_theme.dart';
import 'package:mykanban/features/basic/presentation/theme/utils/abstract_color.dart';

/// 颜色样式
class ColorFactory {
  /// 明亮主题
  static ThemeColors get light => LightThemeColors();

  /// 黑暗主题
  static ThemeColors get dark => DarkThemeColors();
}
