import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class WatchChannelScreen extends StatefulWidget {
  final String channelUrl;
  final String channelName;
  const WatchChannelScreen({
    Key? key,
    required this.channelUrl,
    required this.channelName,
  }) : super(key: key);

  @override
  State<WatchChannelScreen> createState() => _WatchChannelScreenState();
}

class _WatchChannelScreenState extends State<WatchChannelScreen> {
  late VideoPlayerController _controller;
  late Future _videoPlayerControllerInitialized;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.channelUrl);
    _videoPlayerControllerInitialized = _controller.initialize();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white)),
        centerTitle: true,
        shadowColor: Colors.black,
        title: Text(
          "Watch Tv\n${widget.channelName}",
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
            width: 40.0,
          )
        ],
      ),
      body: FutureBuilder(
        future: _videoPlayerControllerInitialized,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GestureDetector(
              onTap: () {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              },
              child: Center(
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.tealAccent,
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.tealAccent,
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          color: Colors.black,
        ),
      ),
    );
  }
}
