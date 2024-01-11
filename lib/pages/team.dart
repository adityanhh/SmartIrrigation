import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartirrigation/pages/support.dart';

class Team extends StatelessWidget {
  const Team({super.key});

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
                    padding: const EdgeInsets.all(20),
                    child: Image.asset('assets/logo.png')),
              ],
            ),
            Container(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 193,
                height: 19,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.green.shade800),
                ),
              ),
            ),
            const Gap(10),
            Text(
              'Our Team',
              style: GoogleFonts.roboto(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.green.shade800),
            ),
            Text(
              "Bertemu dengan Otak di Balik Layar! Inilah Tim Developer Kami yang Penuh Kreativitas, Menghadirkan Inovasi di Setiap Kode yang Mereka Tulis. Kenali Orang-Orang Dibalik Teknologi yang Mengubah Pengalaman Anda.",
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(fontSize: 14, color: Colors.black54),
            ),
            const Gap(10),
            Container(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 193,
                height: 19,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.green.shade800),
                ),
              ),
            ),
            const Gap(20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/adit.jpg'),
                    Text(
                      'Aditya Nugraha\n 152021040',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
              //     Container(
              //       child: Column(
              //         children: <Widget>[
              //           Image.asset('assets/nabil.png'),
              //           Text(
              //             'M. Nabil Athillah \n 152021076',
              //             textAlign: TextAlign.center,
              //             style: GoogleFonts.roboto(
              //               fontSize: 14,
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // const Gap(20),
              // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              //   Container(
              //     child: Column(
              //       children: <Widget>[
              //         Image.asset('assets/zak.png'),
              //         Text(
              //           'Zaky Arif Rahman\n 152021146',
              //           textAlign: TextAlign.justify,
              //           style: GoogleFonts.roboto(
              //             fontSize: 14,
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              //   Container(
              //     child: Column(
              //       children: <Widget>[
              //         Image.asset('assets/kai.png'),
              //         Text(
              //           'Kaifa Nalendra Putra\n 152021195',
              //           textAlign: TextAlign.center,
              //           style: GoogleFonts.roboto(
              //             fontSize: 14,
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
            ]),
            const Gap(20),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[500],
                ),
                child: const Text("Next"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Support()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
