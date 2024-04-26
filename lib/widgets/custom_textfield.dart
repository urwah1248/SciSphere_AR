import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      this.title = '',
      this.suffixIcon,
      this.prefixIcon,
      this.isPrefixIcon = false,
      this.isSuffixIcon = false,
      this.obscureText = false,
      this.isHomepage = false,
      this.hintText});
  final String title;
  final bool isHomepage;
  final String? hintText;
  final bool isPrefixIcon;
  final bool isSuffixIcon;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return isHomepage
        ? SizedBox(
            height: 54,
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: isPrefixIcon ? prefixIcon : null,
                suffixIcon: isSuffixIcon ? suffixIcon : null,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff66328E)),
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff66328E)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          )
        : SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff66328E),
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 14,
                ),
                SizedBox(
                  height: 60,
                  child: TextField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      hintText: hintText,
                      prefixIcon: isPrefixIcon ? prefixIcon : null,
                      suffixIcon: isSuffixIcon ? suffixIcon : null,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff66328E)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff66328E)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
