import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      elevation: 4,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 20.0, top: 10.0, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                SwitchButton(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 20.0, top: 10.0, bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Language :',
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const DropdownButtonL(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Theme :',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
          inactiveTrackColor: Colors.black12,
          activeTrackColor: Colors.black12,
          activeColor: Colors.black87,
        ),
      ],
    );
  }
}


const List<String> list = <String>['English', 'French', 'Spanish', 'Dutch'];

class DropdownButtonL extends StatefulWidget {
  const DropdownButtonL({super.key});

  @override
  State<DropdownButtonL> createState() => _DropdownButtonLState();
}

class _DropdownButtonLState extends State<DropdownButtonL> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_rounded, color: Colors.black),
      elevation: 0,
      style: GoogleFonts.nunito(
        fontSize: 13,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      //style: const TextStyle(color: Colors.black),
      underline: const SizedBox(),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() { });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}