import 'package:flutter/material.dart';
import 'package:watch_tv/screens/watch_channel_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableChannelsScreen extends StatefulWidget {
  const AvailableChannelsScreen({Key? key}) : super(key: key);

  @override
  State<AvailableChannelsScreen> createState() =>
      _AvailableChannelsScreenState();
}

class _AvailableChannelsScreenState extends State<AvailableChannelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
        shadowColor: Colors.black,
        title: Text(
          "Watch Tv",
          style: GoogleFonts.ubuntu(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          ClipOval(
            child: Image.asset(
              "assets/watchtv.png",
              height: 40.0,
              width: 40.0,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 70.0,
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "Ark TV",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://arktelevision.org/hlslive/test/test.m3u8",
                            channelName: "Ark TV",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "NBS TV",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://cdn1.rea.cdn.moderntv.eu/readymedia/stream/NBSTV/10-hls/live-media.m3u8",
                            channelName: "NBS TV",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "BBC Arabic",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://vs-hls-pushb-ww.live.cf.md.bbci.co.uk/x=3/i=urn:bbc:pips:service:bbc_arabic_tv/pc_hd_abr_v2_cloudfrontms_live.m3u8",
                            channelName: "BBC Arabic",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "BBC Earth Asia",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://livecdn.fptplay.net/hda2/bbcearth_vhls.smil/chunklist.m3u8",
                            channelName: "BBC Earth Asia",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "BBC Lifestyle Asia",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://livecdn.fptplay.net/sdb/bbclifestyle_2000.stream/chunklist.m3u8",
                            channelName: "BBC Lifestyle Asia",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "BBCWorldNews Europe",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl: "http://ott-cdn.ucom.am/s24/index.m3u8",
                            channelName: "BBCWorldNews Europe",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "CNBC Europe",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl: "http://ott-cdn.ucom.am/s65/index.m3u8",
                            channelName: "CNBC Europe",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "Comedy Channel",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://uksono1-samsunguk.amagi.tv/playlist.m3u8",
                            channelName: "Comedy Channel",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "RealStories",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://realstories-samsung-uk.amagi.tv/playlist.m3u8",
                            channelName: "RealStories",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "ReutersTV",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://reuters-reutersnow-1.plex.wurl.com/manifest/playlist.m3u8",
                            channelName: "ReutersTV",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "ABCNews",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://content.uplynk.com/channel/3324f2467c414329b3b0cc5cd987b6be.m3u8",
                            channelName: "ABCNews",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "Adventure SportsTV",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://gizmeon.s.llnwi.net/channellivev3/live/master.m3u8?channel=275",
                            channelName: "Adventure SportsTv",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "AmericanHorrors",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "http://170.178.189.66:1935/live/Stream1/playlist.m3u8",
                            channelName: "AmericanHorrors",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "AmericasVoice",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://p1media-americasvoice-1.roku.wurl.com/manifest/playlist.m3u8",
                            channelName: "AmericaVoice",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "ArchitecturalDigest",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxarchitecturaldigest/CDN/playlist.m3u8",
                            channelName: "ArchitecturalDigest",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "CNN",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://tve-live-lln.warnermediacdn.com/hls/live/586495/cnngo/cnn_slate/VIDEO_4_1064000.m3u8",
                            channelName: "CNN",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "CNNInternationalEurope",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://cnn-cnninternational-1-de.samsung.wurl.com/manifest/playlist.m3u8",
                            channelName: "CNNInternationalEurope",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "ElectricNow Movies",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://ov.ottera.tv/live/master.m3u8?channel=elec_en",
                            channelName: "ElectricNow Movies",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "FilmRise FreeMovies",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://dai2.xumo.com/amagi_hls_data_xumo1212A-filmrisefreemovies/CDN/playlist.m3u8",
                            channelName: "FilmRise FreeMovies",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "FightNetwork",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://d12a2vxqkkh1bo.cloudfront.net/hls/main.m3u8",
                            channelName: "FightNetwork",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  shadowColor: Colors.black,
                  elevation: 8.0,
                  child: ListTile(
                    title: Text(
                      "NETV Toronto",
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WatchChannelScreen(
                            channelUrl:
                                "https://live.streams.ovh/NetvToronto/NetvToronto/playlist.m3u8",
                            channelName: "NETV Toronto",
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
