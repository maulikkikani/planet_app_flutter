import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introscreens extends StatefulWidget {
  const introscreens({Key? key}) : super(key: key);

  @override
  State<introscreens> createState() => _introscreensState();
}

class _introscreensState extends State<introscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            body: "Screen 1",
            titleWidget: Text(
              "Welcom To My App",
              style: GoogleFonts.varta(
                fontSize: 30,
              ),
            ),
            decoration: PageDecoration(
              fullScreen: true,
            ),
          ),
          PageViewModel(
            body: "Screen 2",
            titleWidget: Text(
              "A planet is a celestial body that revolves around the sun in fixed orbits planets",
              style: GoogleFonts.varta(
                fontSize: 30,
              ),
            ),
            image: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/image/earth1.png'),
            ),
          ),
          PageViewModel(
            body: "Screen 3",
            titleWidget: Text(
              "According to the widely accepted Big Bang theory,\n our Universe started with an explosion of a concentrated mass in space.\n Later the constellation of stars and planet systems emerged.",
              style: GoogleFonts.varta(
                fontSize: 20,
              ),
            ),

            image: Image.asset('assets/image/mars3.png'),
          ),
        ],
        done: Text("Thank You"),
        showNextButton: false,
        onDone: () {
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        },
      ),
    );
  }
}
