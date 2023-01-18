import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utilities/controller.dart';

class MenuW extends StatelessWidget {
  const MenuW({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 3.0, bottom: 3.0, right: 10.0, left: 35.0),
                    child: Text(
                      'Top 50',
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 3.0, bottom: 3.0, right: 35.0, left: 10.0),
                      child: const DropdownButtonExample(),
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const List<String> list = <String>['World', 'Belgium', 'France', 'Netherlands', 'USA', 'UK'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
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
        setState(() {
          dropdownValue = value!;
          for (var c in countries) {
            if(c.name == dropdownValue) {
              //getTopSong(c.playlistId);
              currentPlaylistId = c.playlistId;
            }
          }
        });
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