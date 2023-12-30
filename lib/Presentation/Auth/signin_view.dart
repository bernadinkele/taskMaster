import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task_master/Presentation/TodoHome/screens/default_button.dart';
import 'package:task_master/Presentation/TodoHome/screens/defualt_field.dart';
import 'package:task_master/Core/core.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    MathUtils.init(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20))
              .copyWith(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: getSize(40),
                    width: getSize(40),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Pallete.borderColor, width: 1),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.arrow_back,
                      color: Pallete.textColor,
                      size: getSize(24),
                    ),
                  ),
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Pallete.textColor,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  const SizedBox()
                ],
              ),
              const Gap(32),
              DefaultField(
                  labelText: "E-mail",
                  hintText: "Enter your email ",
                  controller: emailController),
              const Gap(12),
              DefaultField(
                  isPassword: true,
                  labelText: "Password",
                  hintText: "Enter your Password",
                  controller: passwordController),
              const Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isChecked == true
                                    ? Pallete.primaryColor
                                    : Colors.transparent)),
                        child: Checkbox(
                          checkColor: Pallete.primaryColor,
                          fillColor:
                              const MaterialStatePropertyAll(Colors.white),
                          tristate: false,
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 2, color: Pallete.primaryColor)),
                          side: const BorderSide(
                              width: 2, color: Pallete.primaryColor),
                          value: isChecked,
                          onChanged: (value) => setState(
                            () {
                              isChecked = !isChecked;
                            },
                          ),
                        ),
                      ),
                      const Gap(4),
                      const Text(
                        'Remember Password',
                        style: TextStyle(
                          color: Pallete.textColor,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    'Forgot Password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Pallete.primaryColor,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              ),
              const Gap(26),
              DefaultButton(
                  function: () => Navigator.pushNamedAndRemoveUntil(
                      context, RoutesName.home, (route) => false),
                  btnTextContent: "Sign In Now"),
              const Gap(48),
              const Text(
                'Or with',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const Gap(48),
              DefaultButton(
                raduis: 10,
                btnTextContent: "Login with Facebook",
                btnIcon: AssetsConstants.facebook,
              ),
              const Gap(10),
              DefaultButton(
                raduis: 10,
                btnTextContent: "Login with Google",
                btnIcon: AssetsConstants.googleLogo,
                filledColor: Colors.white,
                btnTextContentColor: Pallete.textColor,
              ),
              const Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'I don’t Have an account? ',
                      style: TextStyle(
                        color: Pallete.textColor,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pushReplacementNamed(
                            context, RoutesName.signup),
                      text: 'Signup',
                      style: const TextStyle(
                        color: Pallete.primaryColor,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(36)
            ],
          ),
        ));
  }
}
