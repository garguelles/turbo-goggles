import 'package:flutter/material.dart';
import 'package:youtube_ui/screens/video/widgets/action_buttons.dart';
import 'package:youtube_ui/screens/video/widgets/channel_info.dart';
import 'package:youtube_ui/screens/video/widgets/playlist.dart';
import 'package:youtube_ui/utils/screen_arguments.dart';
import 'package:youtube_ui/main.dart';

class VideoScreen extends StatelessWidget {
  static const routeName = '/video';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    Map data = appData[args.id];

    Widget _videoTitle = Text(
      data['title'],
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );

    Widget _viewCount = Text(
      '${data['views']} views',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 14,
      ),
    );

    return ListView(
      children: <Widget>[
        Image.asset(
          'assets/images/${data['cover']}',
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
        ChannelInfo(
          channelName: data['channelName'],
          subscribers: data['subscribers'],
        ),
        Playlist(currentVideoId: args.id),
      ],
    );
  }
}