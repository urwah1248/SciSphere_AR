import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scisphere/screens/details_view/details_view.dart';
// import 'package:scisphere/widgets/custom_textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // final List subjects = ['All', 'Physics', 'Chemistry', 'Biology'];
  static List contentsList = [
    "Stack",
    "Queue",
    "Linked List",
    "Circular Linked List",
    "Doubly Linked List",
    "Circular Doubly Linked List",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 26, right: 26, top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 38,
                      color: Color(0xff66328E),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/sample_dp.png'),
                      radius: 24,
                    )
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Hello, Developer',
                  style: GoogleFonts.poppins().copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'What do you want to learn?',
                  style: GoogleFonts.poppins().copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 32,
                ),
                // const CustomTextfield(
                //   isPrefixIcon: true,
                //   prefixIcon: Icon(
                //     Icons.search,
                //     size: 30,
                //   ),
                //   isHomepage: true,
                //   hintText: 'Search..',
                // ),
                const SizedBox(
                  height: 180,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Contents',
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text('View All'),
                    )
                  ],
                ),
                // SizedBox(
                //   height: 60,
                //   width: 400,
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     itemCount: subjects.length,
                //     itemBuilder: (context, index) {
                //       return Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 6),
                //         child: Chip(
                //           side: const BorderSide(color: Colors.green),
                //           label: Text(subjects[index]),
                //         ),
                //       );
                //     },
                //   ),
                // ),
                const SizedBox(height: 4),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Get.to(
                        () => DetailsView(title: contentsList[index]),
                      ),
                      child: SizedBox(
                        // color: Colors.white,
                        height: 110,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE6E6E6),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Image.asset(
                                        'assets/web-programming.png'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        contentsList[index],
                                        style: GoogleFonts.poppins().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text('5.0'),
                                          SizedBox(
                                            width: 26,
                                          ),
                                          // Icon(
                                          //   Icons.timelapse,
                                          //   size: 20,
                                          // ),
                                          // SizedBox(
                                          //   width: 4,
                                          // ),
                                          // Text('4 Levels')
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
