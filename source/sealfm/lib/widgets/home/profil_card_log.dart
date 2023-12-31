import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilCardLog extends StatelessWidget {
  const ProfilCardLog({super.key});

  @override
  Widget build(BuildContext context) {
    var username = 'Theo Debefve';
    var imagePath =
        'https://i.scdn.co/image/ab6775700000ee851b80c46969290d58563a51c4';

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            elevation: 4,
            color: const Color(0xFF0E4DA4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Hello,',
                      style: GoogleFonts.nunito(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      username,
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
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
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(2), // Border radius
                            child: ClipOval(
                              child: CachedNetworkImage(
                                imageUrl: imagePath,
                                width: 60,
                                height: 60,
                                fit: BoxFit.fill,
                                placeholder: (context, url) => const CircularProgressIndicator(),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}