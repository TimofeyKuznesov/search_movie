import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  bool isLoading = true;

  Future<void> initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(
      'https://www.epam-group.ru/content/dam/epam/homepage/iStock-916257392.mp4',
    );
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
    );
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    initializePlayer();
    super.initState();
  }

  @override
  void dispose() {
    _chewieController.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return !isLoading &&
            _chewieController.videoPlayerController.value.isInitialized
        ? Chewie(controller: _chewieController)
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
