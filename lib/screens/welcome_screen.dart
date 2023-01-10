import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch_tv/screens/available_channels_screen.dart';
import 'package:watch_tv/screens/countries_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "WatchTv",
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enjoy from anywhere at any time.",
                  style: GoogleFonts.ubuntu(
                    fontSize: 15.0,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              ClipOval(
                child: Image.asset(
                  "assets/watchtv.png",
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Center(
                child: Container(
                  height: 50.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(251, 3, 220, 228),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const AvailableChannelsScreen())));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
