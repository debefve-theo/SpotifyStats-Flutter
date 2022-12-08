import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCardClose extends StatelessWidget {
  const TopCardClose({super.key});

  @override
  Widget build(BuildContext context) {
    var country = 'World';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            elevation: 4,
            color: Colors.white,
            child: Row(children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    'Top 50',
                    style: GoogleFonts.nunito(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    country,
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0E4DA4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/top');
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Icon(Icons.arrow_right_rounded,
                                size: 40, color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
