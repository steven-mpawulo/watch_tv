import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:watch_tv/screens/watch_channel_screen.dart';

class ChannelsScreen extends StatefulWidget {
  final String code;
  const ChannelsScreen({
    Key? key,
    required this.code,
  }) : super(key: key);

  @override
  State<ChannelsScreen> createState() => _ChannelsScreenState();
}

class _ChannelsScreenState extends State<ChannelsScreen> {
  List channelsList = [];
  int channelsListLength = 0;
  List stream = [];
  Future getChannels() async {
    var url = Uri.parse("https://iptv-org.github.io/api/channels.json");
    try {
      var response = await http.get(url);
      return response;
    } catch (e) {
      print(e);
    }
  }

  Future getChannelUrl() async {
    var url = Uri.parse("https://iptv-org.github.io/api/streams.json");
    try {
      var response = await http.get(url);
      return response;
    } catch (e) {
      print(e);
    }
  }

  @override
  void didChangeDependencies() {
    getChannels().then((value) {
      var channels = jsonDecode(value.body);
      // print(channels);
      List countryChannels = channels.where((value) {
        return value["country"] == widget.code;
      }).toList();

      // print(countryChannels);
      setState(() {
        channelsList = countryChannels;
      });
      int length = countryChannels.length.toInt();
      setState(() {
        channelsListLength = length;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watch TV"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: channelsListLength,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 90.0,
              child: Card(
                child: ListTile(
                  onTap: () {
                    String channel = channelsList[index]["id"];
                    getChannelUrl().then((value) {
                      var streams = jsonDecode(value.body);
                      List myChannels = streams.map((value) {
                        Map stream = {
                          "channel": value["channel"],
                          "url ": value["url"],
                        };
                        return stream;
                      }).toList();
                      var result = myChannels
                          .where((element) => element["channel"] == channel)
                          .toList();
                      Map<dynamic, dynamic> myTv = result[0];
                      print(myTv);

                      // print(myTv["url"]);

                      // print(Uri.parse(myTv["url"]));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const WatchChannelScreen(
                      //             channelUrl:
                      //                 "https://vse-cdn1-readymedia.rea.cdn.moderntv.eu/readymedia/stream/NBSTV/5-20-hls/live.m3u8")));
                    });
                  },
                  title: Text(channelsList[index]["name"]),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25.0,
                    child: ClipOval(
                      child: Image.network(
                        channelsList[index]['logo'],
                        width: 90.0,
                        height: 90.0,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
