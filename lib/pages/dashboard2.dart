import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartirrigation/pages/Navbar.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fl_chart/fl_chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final ref = FirebaseDatabase.instance.ref().child('data').limitToFirst(1);

  Widget listItem({required Map data}) {
    return MaterialApp(
      home: Scaffold(
          drawer: Navbar(),
          appBar: AppBar(
            title: Text('Smart Irrigation System'),
            backgroundColor: Colors.green[800],
          ),
          body: Container(
            padding: EdgeInsets.only(top: 18),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        width: 115,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFB783)),
                        child: Text(
                          'Kelembapan Tanah',
                          style: GoogleFonts.roboto(
                              fontSize: 14, color: Colors.white),
                        )),
                    Container(
                      width: 115,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFB4D2FF)),
                      child: Text(
                        'Suhu Udara',
                        style: GoogleFonts.roboto(
                            fontSize: 14, color: Colors.white),
                      ),
                    ),
                    Container(
                        width: 115,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFC046)),
                        child: Text(
                          'Intensitas Cahaya',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.roboto(
                              fontSize: 14, color: Colors.white),
                        )),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          title: Text('Smart Irrigation System'),
          backgroundColor: Colors.green[800],
        ),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 300,
              child: LineChart(LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                        spots: [FlSpot(0, 25), FlSpot(1, 50), FlSpot(2, 75)],
                        isCurved: true,
                        color: Colors.blue,
                        dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(show: false)),
                  ],
                  titlesData: FlTitlesData(
                      leftTitles: AxisTitles(), bottomTitles: AxisTitles()),
                  borderData: FlBorderData(show: true),
                  gridData: FlGridData(show: true))),
            ),
          ),
          Expanded(
              child: FirebaseAnimatedList(
            query: ref,
            itemBuilder: (context, snapshot, animation, index) {
              return Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 115,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFB783),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Kelembapan Tanah ( % )',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                                snapshot
                                    .child(
                                      'moist',
                                    )
                                    .value
                                    .toString(),
                                style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 115,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFB4D2FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Suhu Udara ( °C )',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(snapshot.child('humidity').value.toString(),
                                style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 115,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFFFED37F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Intensitas Cahaya ( Lux )',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          Text(snapshot.child('temperature').value.toString(),
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ))
        ]));
  }
}
