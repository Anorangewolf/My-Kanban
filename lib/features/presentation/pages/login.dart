import 'package:flutter/material.dart';
import 'package:mykanban/features/presentation/pages/utils/page_utils.dart';

/// 登录界面
class Login extends StatefulWidget {
  /// 登录界面
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    WindowUtil.setResizable(resizable: false);
  }

  @override
  Widget build(BuildContext context) {
    return Base(
      child: Align(
        child: FractionallySizedBox(
          widthFactor: 0.84,
          heightFactor: 0.8,
          child: Row(
            children: [
              // 左侧区域
              const Expanded(
                flex: 55,
                child: DecorationArea(),
              ),

              Expanded(
                flex: 8,
                child: Container(),
              ),

              // 右侧区域
              // TODO(Anorangewolf): 优化右侧登录区域内部的比例.
              Expanded(
                flex: 21,
                child: Column(
                  children: [
                    const Expanded(
                      flex: 9,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius: 50,
                          child: Image(
                            image: AssetImage(
                              'assets/images/default_avatar.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 10,
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        heightFactor: 0.9,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(),
                            ),

                            Expanded(
                              flex: 4,
                              child: Align(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Username',
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child: Align(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Password',
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 8,

                      child: Column(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: colTheme.secondary.color,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        'Login',
                                        style: txtTheme.loginPageButton,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            flex: 5,
                            child: Row(),
                          ),
                          Expanded(
                            flex: 8,
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 装饰图片和logo
class DecorationArea extends StatelessWidget {
  /// 装饰图片和logo
  const DecorationArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              image: AssetImage('assets/images/login_decoration.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Text('MyKanban', style: txtTheme.logo),
        ),
      ],
    );
  }
}
