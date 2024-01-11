import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartirrigation/pages/team.dart';

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
                      padding:
                          const EdgeInsets.only(top: 50, bottom: 30, left: 20),
                      child: Image.asset('assets/logo.png'),
                    ),
                  ],
                ),
                const Gap(10),
                Row(
                  children: <Widget>[
                    Container(
                      width: 285,
                      height: 219,
                      decoration: const BoxDecoration(color: Colors.green),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Features That We Provide',
                              style: GoogleFonts.roboto(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'Optimalkan pertanian Anda dengan Smart Irrigation System berbasis IoT kami - hemat air, tingkatkan hasil panen, dan pantau tanaman Anda secara real-time.',
                              style: GoogleFonts.roboto(
                                  fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Gap(2),
                            Text(
                              '1. Penghematan Air Yang Signifikan',
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(2),
                            Text(
                              'Hanya memberikan air ketika diperlukan, mengurangi pemborosan.',
                              style: GoogleFonts.roboto(
                                  fontSize: 16, color: Colors.white),
                            ),
                            Gap(4),
                            Text(
                              '2. Monitoring 24/7',
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(2),
                            Text(
                              'Pantau tanaman Anda dari mana saja, kapan saja melalui aplikasi berbasis smartphone.',
                              style: GoogleFonts.roboto(
                                  fontSize: 16, color: Colors.white),
                            ),
                            Gap(4),
                            Text('3. Kustomisasi',
                                style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Gap(2),
                            Text(
                              'Sesuaikan sistem dengan kebutuhan tanaman Anda, termasuk jenis tanah dan jenis tanaman.',
                              style: GoogleFonts.roboto(
                                  fontSize: 16, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[500],
                    ),
                    child: const Text("Next"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Team()));
                    },
                  ),
                ),
                Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.green),
                )
              ],
            )));
  }
}
