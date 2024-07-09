import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:scisphere/screens/auth_view/login_screen.dart';
import 'package:scisphere/screens/home_view/home_page.dart';
import 'package:scisphere/widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 26, left: 34, right: 34),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Center(
                child: Image(
                  image: AssetImage('assets/AR LOGO 1.png'),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Create An Account',
                style: TextStyle(
                    color: Color(0xff66328E),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextfield(
                title: 'Name',
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextfield(
                title: 'Email Address',
                isPrefixIcon: true,
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff66328E),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextfield(
                title: 'Password',
                isPrefixIcon: true,
                isSuffixIcon: true,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff66328E),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // const CustomTextfield(
              //   title: 'Confirm Password',
              //   isPrefixIcon: true,
              //   isSuffixIcon: true,
              //   suffixIcon: Icon(
              //     Icons.remove_red_eye_outlined,x
              //     color: Colors.black,
              //   ),
              //   prefixIcon: Icon(
              //     Icons.lock,
              //     color: Color(0xff66328E),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 12),
                child: InkWell(
                  onTap: () => Get.to(() => HomePage()),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xff66328E),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have an account already?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () => Get.to(() => const LoginScreen()),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                          color: Color(0xff66328E),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
