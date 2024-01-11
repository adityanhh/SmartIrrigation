import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartirrigation/pages/features.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg1.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter)),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('assets/logo.png'),
                ),
              ],
            ),
            Column(
              children: <Widget>[Image.asset('assets/splash.png')],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 6),
              // padding: const EdgeInsets.all(18),
              child: Text(
                "Smart System Irrigation",
                style: GoogleFonts.roboto(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            Container(
              child: Text(
                "Smart Irrigation System adalah sebuah sistem yang menggabungkan teknologi IoT untuk memantau dan mengontrol irigasi secara otomatis, meningkatkan efisiensi penggunaan air dalam pertanian dengan presisi yang belum pernah terjadi sebelumnya.",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                ),
              ),
            ),
            const Gap(120),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[500],
                ),
                child: const Text("Next"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Fitur()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
