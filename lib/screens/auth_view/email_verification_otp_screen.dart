import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailVerificationScreen extends StatelessWidget {
  EmailVerificationScreen({super.key});
  final InputDecoration customInputDecoration = InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        color: Color(0xffD9D9D9),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        color: Color(0xffD9D9D9),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 10),
              child: Text(
                'Verify your email address',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16), children: [
                const TextSpan(
                  text: 'We sent you a 4 digit code to verify\nyour email address',
                ),
                TextSpan(
                  text: '(desx@gmail.com).\n',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const TextSpan(
                  text: 'Enter in the field below.\n ',
                ),
              ]),
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 54),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 70,
                      child: TextField(
                        decoration: customInputDecoration,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 70,
                      child: TextField(
                        decoration: customInputDecoration,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 70,
                      child: TextField(
                        decoration: customInputDecoration,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 70,
                      child: TextField(
                        decoration: customInputDecoration,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn’t get the code?',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    ' Resend',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14), children: [
                const TextSpan(
                  text: 'Expires in',
                ),
                TextSpan(
                  text: ' 01:00',
                  style: TextStyle(color: const Color(0xff66328E), fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 32),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(color: const Color(0xff66328E), borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
