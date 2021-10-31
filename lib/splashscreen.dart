
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepresults/dashboard.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      title: Text(
        'Check All Result',
        style: GoogleFonts.lalezar(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
      image: Image.asset('img/logo.png'),
      photoSize: 180,
      seconds: 3,
      navigateAfterSeconds:  Dashboard(),
      backgroundColor: Colors.grey.shade50,
      loaderColor: Colors.black,
      loadingText: Text(
        '2021 Manjil Koirala',
        style: GoogleFonts.lato(color: Colors.black54, fontSize: 15),
      ),
    );
  }
}
