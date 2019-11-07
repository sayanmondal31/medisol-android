import 'package:flutter/material.dart';
import 'package:medisol/fitness/yoga/yoga_page_function.dart';
import 'package:video_player/video_player.dart';


class YogaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView(
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/reel.mp4',
            ),
            looping: true,
          ),
         Center(child: Text('5 Minutes Yoga Routine',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),)),
         
        ],
      ),
    );
  }
}