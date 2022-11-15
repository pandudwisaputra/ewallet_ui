import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import '../common/my_color.dart';
import '../common/my_typography.dart';
import '../widgets/my_button.dart';
import '../widgets/my_textfield.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Expanded(
                child: Center(
                    child: Text(
                  'Immediately Feel\nThe Ease of Transacting\nJust by Registering',
                  style: MyTypography.headingLarge
                      .copyWith(color: MyColor.darkPurple1),
                  textAlign: TextAlign.center,
                )),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign up with',
                      style:
                          MyTypography.textSmall.copyWith(color: MyColor.gray3),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: MyButton(
                            onTap: () {},
                            color: Colors.white,
                            centerText: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/png/google.png'),
                                  const SizedBox(width: 7),
                                  Text(
                                    "Google",
                                    style: MyTypography.textMedium
                                        .copyWith(color: MyColor.gray3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: MyButton(
                            onTap: () {},
                            color: MyColor.blueFB,
                            centerText: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/png/facebook.png'),
                                  const SizedBox(width: 7),
                                  Text(
                                    "Facebook",
                                    style: MyTypography.textMedium
                                        .copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const MyTextField(
                      prefixIcon: 'assets/svg/profile.svg',
                      hintText: "Username",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const MyTextField(
                      prefixIcon: 'assets/svg/sms.svg',
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    MyTextField(
                      obscureText: true,
                      prefixIcon: 'assets/svg/key-square.svg',
                      hintText: "Password",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset('assets/svg/Eye-slash.svg'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: 193,
                      child: MyButton(
                          onTap: () {},
                          color: MyColor.darkPurple3,
                          centerText: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              'Register',
                              style: MyTypography.button,
                            ),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You have account?',
                          style: MyTypography.textSmall
                              .copyWith(color: MyColor.gray3),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: const LoginPage(),
                                  type: PageTransitionType.fade,
                                  duration: const Duration(milliseconds: 400),
                                  reverseDuration:
                                      const Duration(milliseconds: 400),
                                ),
                              );
                            },
                            child: Text(
                              'Login',
                              style: MyTypography.textSmall
                                  .copyWith(color: MyColor.blue1),
                            ))
                      ],
                    )
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
