import 'package:busapp/login_feature/presentation/views/login_view.dart';
import 'package:busapp/utils/widgets/custom_button.dart';
import 'package:busapp/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: const Color(0xffD9D9D9),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 31),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: CustomTextField(labelText: 'first name')),
                      Expanded(child: CustomTextField(labelText: 'last name'))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextField(labelText: 'Password'),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextField(labelText: 'confirm Password'),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextField(labelText: 'phone number'),
                  const SizedBox(height: 20),
                  const CustomTextField(labelText: 'Email'),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomButton(btnName: 'Create'),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don`t Have Account ?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) {
                                return const LoginView();
                              },
                            ),
                            (route) => false,
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xff240750),
                            color: Color(0xff240750),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
