import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              Text(
                'Create An Account',
                style: GoogleFonts.poppins().copyWith(
                    color: const Color(0xff66328E),
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
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextfield(
                title: 'Confirm Password',
                isPrefixIcon: true,
                isSuffixIcon: true,
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.black,
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff66328E),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 12),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xff66328E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'SIGN UP',
                        style: GoogleFonts.poppins().copyWith(
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
                  Text(
                    'Have an account already?',
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Log in',
                    style: GoogleFonts.poppins().copyWith(
                        color: const Color(0xff66328E),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
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
