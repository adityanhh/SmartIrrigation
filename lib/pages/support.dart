import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartirrigation/pages/dashboard.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage('assets/support.png'),
        //         fit: BoxFit.fitWidth,
        //         alignment: AlignmentDirectional(1, -0.5))),
        child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(18),
                  child: Image.asset('assets/logo.png')),
            ],
          ),
          Column(
            children: [Image.asset('assets/support.png')],
          ),
          Container(
            child: Text(
              'Jalin Komunikasi yang Lebih Dekat dengan Tim Kami! Sampaikan Pertanyaan, Saran, atau Kolaborasi melalui Informasi Kontak yang Tersedia. Kami Siap Membantu Anda',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(fontSize: 18),
            ),
          ),
          const Gap(20),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.attach_email,
                    color: Colors.white,
                  ),
                  Text(
                    ' smartsystemirrigation@gmail.com',
                    style:
                        GoogleFonts.roboto(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          const Gap(20),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[500],
              ),
              child: const Text("Next"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
