import 'package:flutter/material.dart';
import 'package:youtube_ui/screens/video/widgets/playlist_item.dart';
import 'package:youtube_ui/main.dart';

class Playlist extends StatelessWidget {
  final int currentVideoId;

  Playlist({ this.currentVideoId });

  List<PlaylistItem> _buildPlaylist(appData) {
    List<PlaylistItem> playlist = List<PlaylistItem>();

    appData.forEach((key, val) {
      // remove current video from playlist
      if (currentVideoId != key) {
        PlaylistItem item = PlaylistItem(
          id: key,
          title: val['title'],
          cover: val['cover'],
          channelName: val['channelName'],
          views: val['views'],
          uploadDate: val['uploadDate'],
        );

        playlist.add(item);
      }
    });

    return playlist;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'Up next',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Autoplay',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                    ),
                  ),
                  Switch(
                    value: false,
                    activeColor: Colors.blue,
                    onChanged: (newValue) {
                    },
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: _buildPlaylist(appData),
          )
        ],
      )
    );
  }
}