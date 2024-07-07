import 'package:flutter/material.dart';

import 'package:scisphere/widgets/custom_textfield.dart';
import 'package:scisphere/widgets/successfully_password_reset_dialog_box.dart';

Future<dynamic> forgotPasswordDialogBox(BuildContext context) {
  return showDialog(
    context: context,
    builder: ((context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SizedBox(
            width: 440,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [GestureDetector(onTap: () {}, child: const Icon(Icons.close))],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Text(
                        'Forgot Your Password?',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Enter Your Email Address and we will share a link to create a new passwrod.',
                        style: TextStyle(color: const Color(0xff66328E), fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      const CustomTextfield(
                        hintText: 'Enter Your Email Address',
                        isHomepage: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 26),
                        child: InkWell(
                          onTap: () {
                            successfullyPasswordResetDialogBox(context);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(color: const Color(0xff66328E), borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.send,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Send',
                                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }),
  );
}
