import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scisphere/screens/auth_view/sign_up_screen.dart';
import 'package:scisphere/screens/home_view/home_page.dart';
import 'package:scisphere/widgets/custom_textfield.dart';
import 'package:scisphere/widgets/forgot_password_dialog_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 100),
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
              Text(
                'Welcome Back',
                style: GoogleFonts.poppins().copyWith(
                    color: const Color(0xff66328E),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Login to continue',
                style: GoogleFonts.poppins().copyWith(
                    color: const Color(0xff66328E),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
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
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      forgotPasswordDialogBox(context);
                    },
                    child: Text(
                      'forgot password?',
                      style: GoogleFonts.poppins().copyWith(
                          color: const Color(0xff66328E),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36, bottom: 16),
                child: InkWell(
                  onTap: () => Get.to(() => HomePage()),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xff66328E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'LOG IN',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () => Get.to(() => const SignUpScreen()),
                    child: Text(
                      'Sign up now',
                      style: GoogleFonts.poppins().copyWith(
                          color: const Color(0xff66328E),
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
