import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_play/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Skill Quest',
              style: GoogleFonts.kings(
                  textStyle: const TextStyle(
                fontSize: 50,
              )),
            ),
            Image.asset('assets/logo.png'),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Unleash Your Inner Warrior: Conquer Challenges, Master Skills, and Rise!!',
                style: GoogleFonts.kings(
                    textStyle: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const MainScreen(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(12),
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffc2c2c2),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(8, 8),
                      color: Colors.grey,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'Start Your Journey',
                    style: GoogleFonts.luckiestGuy(
                        textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
