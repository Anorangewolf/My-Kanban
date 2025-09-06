import 'package:flutter/material.dart';

/// 基础出血组件
class Base extends StatelessWidget {
  /// 基础出血组件
  /// child: 子组件
  const Base({super.key, this.child});

  /// 子组件
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: FractionallySizedBox(
          widthFactor: 0.98,
          heightFactor: 0.98,
          child: child,
        ),
      ),
    );
  }
}
