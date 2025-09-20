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

              // Left decoration area
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
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'MyKanban',
                            style: txtTheme.logo,
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

              // Right form area
              // TODO(Anorangewolf): 固定右侧登录区域的比例.
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
                                      backgroundColor: colTheme.surface.color,
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

              Expanded(flex: 8, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
