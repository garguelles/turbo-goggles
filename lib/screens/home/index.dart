import 'package:flutter/material.dart';
import 'package:youtube_ui/screens/home/widgets/video_item.dart';
import 'package:youtube_ui/main.dart';


class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  List<VideoItem> _createItems() {
    List<VideoItem> items = List<VideoItem>();

    appData.forEach((k, v) {
      items.add(VideoItem(
        id: k,
        title: v['title'],
        cover: v['cover'],
        channelName: v['channelName'],
        views: v['views'],
        uploadDate: v['uploadDate'],
      ));
    });

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      child: ListView(
        children: _createItems(),
      ),
    );
  }
}