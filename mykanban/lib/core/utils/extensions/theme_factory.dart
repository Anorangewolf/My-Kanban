import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/default_colors.dart';

/// ���⹤����
class ThemeFactory {
  /// ��������
  static ThemeData light = LightTheme();

  /// �ڰ�����
  static ThemeData dark = DarkTheme();
}

/// �����������������ԣ�
/// - primary
/// - primaryVariant
/// - secondary
/// - secondaryVariant
/// - background
/// - surface
/// - onPrimary
/// - onSecondary
/// - onBackground
/// - onSurface
/// - error
/// - success
/// - warning
abstract class ThemeData {
  /// ��������ɫ
  Color get primary;

  /// ��������ɫ����
  Color get primaryVariant;

  /// ��������Ҫɫ
  Color get secondary;

  /// ��������Ҫɫ����
  Color get secondaryVariant;

  /// ����������
  Color get background;

  /// ��������������
  Color get surface;

  /// �ı���������
  Color get onPrimary;

  /// �ı�����Ҫ����
  Color get onSecondary;

  /// �ı�����������
  Color get onBackground;

  /// �ı���������������
  Color get onSurface;

  /// ���ܣ�����
  Color get error;

  /// ���ܣ��ɹ�
  Color get success;

  /// ���ܣ�����
  Color get warning;

  /// �Ҷȣ�͸��
  static const Color gray0 = Colors.transparent;

  /// �Ҷȣ�12%
  static const Color gray1 = Colors.black12;

  /// �Ҷȣ�26%
  static const Color gray2 = Colors.black26;

  /// �Ҷȣ�38%
  static const Color gray3 = Colors.black38;

  /// �Ҷȣ�54%
  static const Color gray4 = Colors.black54;

  /// �Ҷȣ�87%
  static const Color gray5 = Colors.black87;

  /// �Ҷȣ�100%
  static const Color gray6 = Colors.black;
}

// TODO(Anorangewolf): ��������ʦҪ��ȫ���㹫ʽ��ע��LightTheme��DarkTheme�����׹�ʽ��
/// ���������࣬������һ������ɫ
class LightTheme extends ThemeData {
  /// �������⣬����һ����ɫ���㹫ʽ��ͨ���û�����Ļ�׼ɫbasecolor����primary)�������������⡣
  LightTheme({this.basecolor = DefaultColors.defaultTheme});

  /// ��׼ɫ, Ĭ��ΪARGB(255, 20, 160, 90)
  final Color basecolor;

  @override
  Color get primary => basecolor;
  @override
  Color get primaryVariant => basecolor;
  @override
  Color get secondary => basecolor;
  @override
  Color get secondaryVariant => basecolor;
  @override
  Color get background => basecolor;
  @override
  Color get surface => basecolor;
  @override
  Color get onPrimary => Colors.white;
  @override
  Color get onSecondary => Colors.white;
  @override
  Color get onBackground => Colors.white;
  @override
  Color get onSurface => Colors.white;
  @override
  Color get error => Colors.red;
  @override
  Color get success => Colors.green;
  @override
  Color get warning => Colors.yellow;
}

/// �ڰ������࣬������һ������ɫ
class DarkTheme extends ThemeData {
  /// �ڰ����⣬����һ����ɫ���㹫ʽ��ͨ���û�����Ļ�׼ɫbasecolor����primary)�������������⡣
  DarkTheme({this.basecolor = DefaultColors.defaultTheme});

  /// ��׼ɫ, Ĭ��ΪARGB(255, 20, 160, 90)
  final Color basecolor;

  @override
  Color get primary => basecolor;
  @override
  Color get primaryVariant => basecolor;
  @override
  Color get secondary => basecolor;
  @override
  Color get secondaryVariant => basecolor;
  @override
  Color get background => basecolor;
  @override
  Color get surface => basecolor;
  @override
  Color get onPrimary => Colors.white;
  @override
  Color get onSecondary => Colors.white;
  @override
  Color get onBackground => Colors.white;
  @override
  Color get onSurface => Colors.white;
  @override
  Color get error => Colors.red;
  @override
  Color get success => Colors.green;
  @override
  Color get warning => Colors.yellow;
}
