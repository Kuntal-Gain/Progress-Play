import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282424),
      body: Center(
        child: Text(
          'Avaliable in Future Updates',
          style: GoogleFonts.luckiestGuy(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 21,
          )),
        ),
      ),
    );
  }
}
