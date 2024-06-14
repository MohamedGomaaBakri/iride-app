import 'package:busapp/login_feature/presentation/views/signup_view.dart';
import 'package:busapp/utils/widgets/custom_button.dart';
import 'package:busapp/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const Image(
                    image: AssetImage('assets/images/App_Logo.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Joyride',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  height: 434,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    color: const Color(0xffD9D9D9),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 31),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const CustomTextField(
                        labelText: 'Username',
                      ),
                      const SizedBox(
                        height: 34,
                      ),
                      const CustomTextField(labelText: 'Password'),
                      const SizedBox(
                        height: 35,
                      ),
                      const CustomButton(
                        btnName: 'Login',
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 10,
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
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SignupView();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              'Sign up',
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
        ),
      ),
    );
  }
}
