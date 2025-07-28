import 'package:flutter/material.dart';

/// 登陆界面
class Login extends StatelessWidget {
  /// 登陆界面构造函数
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: FractionallySizedBox(
          widthFactor: 0.95,
          heightFactor: 0.95,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.7,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('登陆'),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '请输入用户名',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '请输入密码',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('登陆'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
