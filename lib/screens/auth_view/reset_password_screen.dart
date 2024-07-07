import 'package:flutter/material.dart';

import 'package:scisphere/widgets/custom_textfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 34, right: 34, top: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Reset Password',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 26,
              ),
              const CustomTextfield(
                obscureText: true,
                title: 'New Password',
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextfield(
                obscureText: true,
                title: 'Confirm Password',
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 48),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(color: const Color(0xff66328E), borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
