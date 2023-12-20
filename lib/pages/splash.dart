import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartirrigation/pages/homescreen.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const Homescreen(),
          ),
          (route) => false);
    });

    return Scaffold(
      appBar: AppBar(title: const Text("System Irrigaton")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: (MainAxisAlignment.center),
          children: [
            Image.asset(
              'assets/splash.png',
              height: 250.0,
              width: 250.0,
            ),
            // const SizedBox(
            //   height: 73,
            // ),
            const Gap(20),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Smart Irrigation System",
                    style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.black54,
                      height: 152 / 100,
                    ))),
            // const SizedBox(
            //   height: 50,
            // ),
            const Gap(20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
