import 'package:mykanban/core/constants/dev/type_defs.dart';
import 'package:mykanban/features/presentation/theme/utils/abstract_color.dart';
import 'package:mykanban/features/presentation/theme/utils/index.dart';

export 'package:mykanban/core/constants/base/text/utils/index.dart';
export 'package:mykanban/features/presentation/theme/utils/index.dart';
export 'package:mykanban/features/presentation/widgets/utils/index.dart';

// TODO(Anorangewolf): Please change the location of the themeSettings.
// #region 主题设置
/// 应用的主题 appTheme
ColorTheme theme = ColorFactory.fac(
  ThemeColor.dfThemeColor,
);
// #endregion
