import 'package:flutter/material.dart';
import 'package:mykanban/app.dart';

void main() {
  // 全局初始化
  // WidgetsFlutterBinding.ensureInitialized();

  // 设置错误处理
  // FlutterError.onError = (details) {
  //   debugPrint('全局错误: ${details.exception}');
  // };

  runApp(const Mykanban());
}
