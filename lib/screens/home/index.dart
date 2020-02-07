import 'package:flutter/material.dart';
import 'package:youtube_ui/screens/home/widgets/video_item.dart';


class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      child: ListView(
        children: <Widget>[
          VideoItem(
            title: 'Thursday - Standing on the edge of summer',
            cover: 'thursday.jpg',
            channelName: 'ThursdayOfficial',
            views: '352K',
            uploadDate: '5 years ago',
          ),
          VideoItem(
            title: 'Deftones - Minerva',
            cover: 'deftones.jpg',
            channelName: 'DeftonesVEVO',
            views: '20M',
            uploadDate: '8 years ago',
          ),
          VideoItem(
            title: 'Tool - Descending',
            cover: 'tool.jpg',
            channelName: 'TOOL',
            views: '32M',
            uploadDate: '3 months ago',
          ),
          VideoItem(
            title: 'Trivium - Down from the sky',
            cover: 'trivium.jpeg',
            channelName: 'TriviumOfficial',
            views: '18M',
            uploadDate: '6 years ago',
          ),
          VideoItem(
            title: 'Thrice - Image of the invicible',
            cover: 'thrice.jpeg',
            channelName: 'ThriceVEVO',
            views: '5M',
            uploadDate: '4 years ago',
          ),
        ],
      ),
    );
  }
}