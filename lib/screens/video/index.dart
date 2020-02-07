import 'package:flutter/material.dart';
import 'package:youtube_ui/screens/video/widgets/action_buttons.dart';
import 'package:youtube_ui/screens/video/widgets/channel_info.dart';
import 'package:youtube_ui/screens/video/widgets/playlist.dart';

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _videoTitle = Text(
      'Thursday - Steps Ascending',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );

    Widget _viewCount = Text(
      '93k views',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 14,
      ),
    );


    return ListView(
      children: <Widget>[
        Image.asset(
          'assets/images/thursday.jpg',
          height: 240,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _videoTitle,
              Padding(
                padding: EdgeInsets.only(top: 6),
                child: _viewCount,
              ),
              ActionButtonList(),
            ],
          ),
        ),
        ChannelInfo(),
        Playlist(),
      ],
    );
  }
}