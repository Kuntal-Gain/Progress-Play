import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
Widget ExpCard(String type, String target, int exp) {
  return Container(
    margin: const EdgeInsets.all(12),
    height: 150,
    decoration: BoxDecoration(
      color: const Color(0xff181414),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          type,
          style: GoogleFonts.luckiestGuy(
              textStyle: const TextStyle(
            color: Colors.white,
          )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Goal : ',
              style: GoogleFonts.luckiestGuy(
                  textStyle: const TextStyle(
                color: Colors.white,
              )),
            ),
            Text(
              target.toString(),
              style: GoogleFonts.luckiestGuy(
                  textStyle: const TextStyle(
                color: Colors.white,
              )),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(12),
          height: 30,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Center(
            child: Text(
              '$exp xp',
              style: GoogleFonts.luckiestGuy(
                  textStyle: const TextStyle(
                color: Colors.white,
              )),
            ),
          ),
        ),
      ],
    ),
  );
}
