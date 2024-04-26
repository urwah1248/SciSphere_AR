import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              'Welcome to SciSphere',
              style: GoogleFonts.poppins().copyWith(
                  color: const Color(0xff66328E),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            body:
                'Welcome as you learn a world\nchanging skill to get a better job.',
            image: const Image(
              image: AssetImage(
                'assets/intro-first-image.png',
              ),
              height: 300,
              width: 200,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'Choose Your Course',
              style: GoogleFonts.poppins().copyWith(
                  color: const Color(0xff66328E),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            body:
                'Choose the course of your choice\nand gain industry knowledge and\nexperience in it.',
            image: const Image(
              image: AssetImage(
                'assets/intro-second-image.png',
              ),
              height: 300,
              width: 200,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'Get Acknowledged',
              style: GoogleFonts.poppins().copyWith(
                  color: const Color(0xff66328E),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            body:
                'Start learning and get educated\nafter your training to get a good\ngrade at practical exam',
            image: const Image(
              image: AssetImage(
                'assets/intro-third-image.png',
              ),
              height: 300,
              width: 200,
            ),
          ),
        ],
        onDone: () {},
        onSkip: () {},
        showSkipButton: false,
        overrideSkip: TextButton(onPressed: () {}, child: Text('Skip')),
        dotsDecorator: const DotsDecorator(
            size: Size.square(10),
            activeSize: Size(20, 10),
            color: Colors.black26,
            activeColor: Color(0xff66328E),
            spacing: EdgeInsets.symmetric(horizontal: 3),
            activeShape: CircleBorder()),
        done: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff66328E)),
          child: const Text('Get Started'),
        ),
        next: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff66328E),
              minimumSize: const Size(200, 44),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6))),
          child: Text(
            'Next',
            style: GoogleFonts.poppins().copyWith(color: Colors.white),
          ),
        ),
        back: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
