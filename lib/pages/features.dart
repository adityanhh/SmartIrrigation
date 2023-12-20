import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Fitur extends StatelessWidget {
  const Fitur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 18),
                      child: Image.asset('assets/logo.png'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 273,
                      height: 219,
                      decoration: const BoxDecoration(color: Colors.green),
                    )
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 306,
                      height: 322,
                      decoration: const BoxDecoration(color: Colors.green),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: '1. Penghematan air yang signifikan ',
                            style: GoogleFonts.roboto(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
