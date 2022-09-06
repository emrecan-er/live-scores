import 'package:flutter/material.dart';

import 'package:football_app/widgets/leauge_card.dart';
import 'package:football_app/widgets/matches.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFeed extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color(0xFF0A0E21),
      Color(0xFF1D1E33),
      Color(0xff50ded0),
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111328),
      appBar: AppBar(
        actions: <Widget>[],
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'LiveScores',
          style: GoogleFonts.varelaRound(
            textStyle: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient),
          ),
        ),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                  height: 15,
                ),
                Text(
                  'Leauges',
                  style: TextStyle(
                    color: Color(0xff50ded0),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15,
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LeaugeCard(url: 'assets/premier-removebg-preview.png'),
                  LeaugeCard(
                      url:
                          'assets/algeria-map-collection-253485201-removebg-preview.png'),
                  LeaugeCard(url: 'assets/download-removebg-preview.png'),
                  LeaugeCard(url: 'assets/superlig.png'),
                ],
              ),
            ),
            SizedBox(
              width: 15,
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                  height: 15,
                ),
                Text(
                  'Matches',
                  style: TextStyle(
                    color: Color(0xff50ded0),
                  ),
                ),
              ],
            ),
            Matches(
              homeLogo:
                  'https://o.remove.bg/downloads/813d4b20-b4e2-4be7-89f6-234a630279fa/MKE_Ankarag%C3%BCc%C3%BC_logo-removebg-preview.png',
              awayLogo:
                  'https://o.remove.bg/downloads/5b22dcc0-6078-47d1-9464-40f546d4936e/G%C3%B6ztepe-removebg-preview.png',
              homeName: 'ANKARAGÜCÜ',
              awayName: 'GÖZTEPE',
              minute: '57\'',
              homeScore: '3',
              awayScore: '2',
            ),
            Matches(
              homeLogo:
                  'https://o.remove.bg/downloads/62ef629f-bb50-4626-9623-247d084ed221/Kayserispor_logosu-removebg-preview.png',
              awayLogo:
                  'https://o.remove.bg/downloads/85c85855-2f5b-4de5-96e7-2753e0ec2c83/Hatayspor-removebg-preview.png',
              homeName: 'KAYSERİSPOR',
              awayName: 'HATAYSPOR',
              minute: '90+\'',
              homeScore: '2',
              awayScore: '2',
            ),
            Matches(
              homeLogo:
                  'https://o.remove.bg/downloads/50e1988d-dfb0-4d88-b210-6820a123071c/Hull_City_AFC_logosu-removebg-preview.png',
              awayLogo:
                  'https://o.remove.bg/downloads/a7c278a3-c54d-4c6c-8a21-d318efabd6aa/Wolverhampton_Wanderers-removebg-preview.png',
              homeName: 'HULL CITY',
              awayName: 'WOLVES',
              minute: '41\'',
              homeScore: '0',
              awayScore: '3',
            ),
            Matches(
              homeLogo:
                  'https://o.remove.bg/downloads/813d4b20-b4e2-4be7-89f6-234a630279fa/MKE_Ankarag%C3%BCc%C3%BC_logo-removebg-preview.png',
              awayLogo:
                  'https://o.remove.bg/downloads/5b22dcc0-6078-47d1-9464-40f546d4936e/G%C3%B6ztepe-removebg-preview.png',
              homeName: 'ANKARAGÜCÜ',
              awayName: 'GÖZTEPE',
              minute: '57\'',
              homeScore: '3',
              awayScore: '2',
            ),
            Matches(
              homeLogo:
                  'https://o.remove.bg/downloads/50e1988d-dfb0-4d88-b210-6820a123071c/Hull_City_AFC_logosu-removebg-preview.png',
              awayLogo:
                  'https://o.remove.bg/downloads/a7c278a3-c54d-4c6c-8a21-d318efabd6aa/Wolverhampton_Wanderers-removebg-preview.png',
              homeName: 'HULL CITY',
              awayName: 'WOLVES',
              minute: '41\'',
              homeScore: '0',
              awayScore: '3',
            ),
          ],
        ),
      ),
    );
  }
}
