import 'package:flutter/material.dart';
import 'package:mykanban/core/constants/default_colors.dart';

// REWRITE(Anorangewolf): ����������ƿ�������ǹ�������.
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
  /// ��׼���û�����Ļ�׼ɫ
  ThemeData({this.basecolor = DefaultColors.defaultTheme});

  /// ��׼ɫ, Ĭ��ΪHSV(98, 0.75, 0.75)
  HSVColor basecolor;

  /// ��������ɫ
  HSVColor get primary => basecolor;

  /// ��������ɫ����
  HSVColor get primaryVariant;

  /// ��������Ҫɫ
  HSVColor get secondary;

  /// ��������Ҫɫ����
  HSVColor get secondaryVariant;

  /// ����������
  HSVColor get background;

  /// ��������������
  HSVColor get surface;

  /// �ı���������
  HSVColor get onPrimary;

  /// �ı�����Ҫ����
  HSVColor get onSecondary;

  /// �ı�����������
  HSVColor get onBackground;

  /// �ı���������������
  HSVColor get onSurface;

  /// ���ܣ�����
  HSVColor get error;

  /// ���ܣ��ɹ�
  HSVColor get success;

  /// ���ܣ�����
  HSVColor get warning;

  /// �Ҷȣ�͸��
  static const HSVColor gray0 = HSVColor.fromAHSV(1, 0, 0, 1);

  /// �Ҷȣ�12%
  static const HSVColor gray1 = HSVColor.fromAHSV(1, 0, 0, 0.88);

  /// �Ҷȣ�26%
  static const HSVColor gray2 = HSVColor.fromAHSV(1, 0, 0, 0.74);

  /// �Ҷȣ�38%
  static const HSVColor gray3 = HSVColor.fromAHSV(1, 0, 0, 0.62);

  /// �Ҷȣ�54%
  static const HSVColor gray4 = HSVColor.fromAHSV(1, 0, 0, 0.46);

  /// �Ҷȣ�87%
  static const HSVColor gray5 = HSVColor.fromAHSV(1, 0, 0, 0.13);

  /// �Ҷȣ�100%
  static const HSVColor gray6 = HSVColor.fromAHSV(1, 0, 0, 0);

  /// �޸���ɫ
  set primary(HSVColor newBase) {
    primary = newBase;
  }
}

/// ���������࣬����һ����ɫ���㹫ʽ��
/// ͨ���û�����Ļ�׼ɫbasecolor����primary)��
/// ��������һ����������ɫ��
class LightTheme extends ThemeData {
  @override
  HSVColor get primary => basecolor;
  @override
  HSVColor get primaryVariant => basecolor;
  @override
  HSVColor get secondary => basecolor;
  @override
  HSVColor get secondaryVariant => basecolor;
  @override
  HSVColor get background => basecolor;
  @override
  HSVColor get surface => basecolor;
  @override
  HSVColor get onPrimary => basecolor;
  @override
  HSVColor get onSecondary => basecolor;
  @override
  HSVColor get onBackground => basecolor;
  @override
  HSVColor get onSurface => basecolor;
  @override
  HSVColor get error => basecolor;
  @override
  HSVColor get success => basecolor;
  @override
  HSVColor get warning => basecolor;
}

/// �ڰ������࣬����һ����ɫ���㹫ʽ��
/// ͨ���û�����Ļ�׼ɫbasecolor����primary)��
/// ��������һ����������ɫ��
class DarkTheme extends ThemeData {
  @override
  HSVColor get primary => basecolor;
  @override
  HSVColor get primaryVariant => basecolor;
  @override
  HSVColor get secondary => basecolor;
  @override
  HSVColor get secondaryVariant => basecolor;
  @override
  HSVColor get background => basecolor;
  @override
  HSVColor get surface => basecolor;
  @override
  HSVColor get onPrimary => basecolor;
  @override
  HSVColor get onSecondary => basecolor;
  @override
  HSVColor get onBackground => basecolor;
  @override
  HSVColor get onSurface => basecolor;
  @override
  HSVColor get error => basecolor;
  @override
  HSVColor get success => basecolor;
  @override
  HSVColor get warning => basecolor;
}
