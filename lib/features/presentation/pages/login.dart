import 'package:flutter/material.dart';
import 'package:mykanban/features/presentation/pages/utils/page_utils.dart';

/// Login page with side decoration
class Login extends StatelessWidget {
  ///
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Base(
      child: Align(
        child: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 0.8,
          child: Row(
            children: [
              Expanded(flex: 8, child: Container()),

              Expanded(
                flex: 55,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage(
                            'assets/images/login_decoration.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: AppDimens.textField
                              .width(txtTheme.logo, 'MyKanban'.length)
                              .value,
                          height: AppDimens.textField
                              .height(txtTheme.logo)
                              .value,
                          child: Align(
                            child: Text(
                              'MyKanban',
                              style: txtTheme.logo.value,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 8,
                child: Container(),
              ),

              Expanded(
                flex: 21,
                child: Column(
                  children: [
                    // TODO(Anorangewolf): 上下添加空白Container占位压缩表单行间距.
                    const Expanded(
                      flex: 9,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius: 50,
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
                              child: Align(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Password',
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 8,
                      // TODO(Anorangewolf): 制作登录按钮.
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.limeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(flex: 8, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
