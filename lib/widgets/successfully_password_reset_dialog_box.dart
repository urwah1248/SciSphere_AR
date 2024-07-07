import 'package:flutter/material.dart';

Future<dynamic> successfullyPasswordResetDialogBox(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Password Reset Successfull.',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'You Can Now Login With Your\nNew Password.',
                        style: TextStyle(color: const Color(0xff66328E), fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 26),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(color: const Color(0xff66328E), borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Proceed',
                                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
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
