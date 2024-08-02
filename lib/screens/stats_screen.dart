import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282424),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getSkill(Icons.fitness_center, "Strength \n(Lv1)"),
                getSkill(Icons.computer, "Intelligence \n(lv1)"),
              ],
            ),
            Center(
              child: getSkill(Icons.menu_book, "Reading\n(lv1)"),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(15),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xff181414),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getStat(Icons.fitness_center, "1000 MP"),
                  getStat(Icons.computer, "100 IQ"),
                  getStat(Icons.menu_book, "100 HP"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget getStat(IconData? icon, String stat) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.white,
      ),
      SizedBox(height: 10),
      Text(
        stat,
        style: GoogleFonts.luckiestGuy(
            textStyle: TextStyle(
          color: Colors.white,
          fontSize: 21,
        )),
      ),
    ],
  );
}

Widget getSkill(IconData? icon, String skill) {
  return Column(
    children: [
      Stack(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff181414),
            radius: 50,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: CircularProgressIndicator(
              value: 70 / 100,
              strokeWidth: 10,
            ),
          ),
        ],
      ),
      const SizedBox(height: 15),
      Container(
        height: 30,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Center(
            child: Text(
          "75 / 100 XP",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      SizedBox(height: 10),
      Text(
        skill,
        style: GoogleFonts.luckiestGuy(
            textStyle: TextStyle(
          color: Colors.white,
          fontSize: 21,
        )),
      )
    ],
  );
}
