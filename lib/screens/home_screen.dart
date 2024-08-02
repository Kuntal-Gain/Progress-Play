import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_play/constants/levels.dart';
import 'package:progress_play/widgets/experience_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282424),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                  child: Image.network(LevelMale.aprentice),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Jhon Doe',
                  style: GoogleFonts.kings(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  )),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(8),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xff181414),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getRank("Apprentice", "Current"),
                  getRank("Journeyman", "Next"),
                  getRank("200xp", "Required xp"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Stack(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(LevelMale.aprentice),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CircularProgressIndicator(
                    value: 150 / 200,
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
                "150 / 200 XP",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ExpCard("Workout💪", "25 pushups", 25),
                ),
                Expanded(
                  child: ExpCard("Coding 💻", "2 Problem", 25),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget getRank(String rank, String section) {
  return Column(
    children: [
      const SizedBox(height: 10),
      Text(
        section,
        style: GoogleFonts.luckiestGuy(
            textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        )),
      ),
      const SizedBox(height: 10),
      Text(
        rank,
        style: GoogleFonts.luckiestGuy(
            textStyle: const TextStyle(
          color: Colors.yellow,
          fontSize: 18,
        )),
      )
    ],
  );
}
