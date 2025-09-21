import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

/// 窗口状态管理
class WindowUtil {
  /// 窗口状态管理
  static Future<void> init({
    required double width,
    required double height,
  }) async {
    final windowOptions = WindowOptions(
      size: Size(width, height),
      minimumSize: Size(width, height),
      center: true,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.hidden,
    );

    await windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  /// 设置窗口是否可缩放
  static void setResizable({required bool resizable}) {
    windowManager.setResizable(resizable);
  }

  /// 关闭窗口
  static Future<void> close() async {
    await windowManager.destroy();
  }

  /// 最小化窗口
  static Future<void> hide() async {
    await windowManager.minimize();
  }

  /// 最大化窗口
  static Future<void> maximize() async {
    await windowManager.maximize();
  }

  /// 还原窗口
  static Future<void> restore() async {
    await windowManager.restore();
  }
}
