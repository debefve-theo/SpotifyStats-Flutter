import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
          elevation: 4,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                    top: 3.0, bottom: 3.0, right: 0, left: 10),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_rounded, color: Colors.black,),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 15.0, bottom: 15.0, right: 0, left: 0),
                  child:Text(
                    'Settings',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}