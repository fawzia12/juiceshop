import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:juicygo/color/app_color.dart';
import 'package:juicygo/model/status_model.dart';
import 'package:juicygo/widget/appbars.dart';
import 'package:juicygo/widget/status_view.dart';
import 'package:juicygo/widget/story_view.dart';
import 'package:story_view/story_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
                  child: Appbars(),
                ),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(height: 11),

            SizedBox(
              height: 120, // Avatar + Text এর জন্য জায়গা
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemCount: statusList.length,
                itemBuilder: (context, index) {
                  return StatusView(status: statusList[index],
                  ontap: (){
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => StoryViews(status: statusList[index]),
        ),
      );
                  },
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Most Popular',
              style: GoogleFonts.akayaTelivigala(
                textStyle: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SizedBox(height: 17),
            Container(
              height: 390,
              width: 270,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.cardPink,
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Container(
                    height: 254,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: AppColor.dividerGray,
                    ),
                    // child: Image.network(''),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
