import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://theo-debefve.be');

class VersionCard extends StatelessWidget {
  const VersionCard({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Weekly Top Albums';
    var subtitle = 'Belgium';

    var number = '1';
    var album = 'Civilisation Edition Ultime';
    var artist = 'Orelsan';

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 80,
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          elevation: 4,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Seal.fm',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            height: 10,
                          ),
                          Text(
                            'Theo Debefve - 2022/2023 ©',
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Container(
                            height: 10,
                          ),
                          Text(
                            'Développement d\'applications',
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          Text(
                            'mobiles Flutter - HEPL Seraing',
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          Container(
                            height: 10,
                          ),
                          Text(
                            'Alpha 0.0.1',
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF0E4DA4)),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset('assets/img/logo.png',
                          width: 80, height: 60, fit: BoxFit.fill),
                    ),
                  ]),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0E4DA4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      onPressed: _launchUrl,
                      child: Text(
                        'More about me',
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}