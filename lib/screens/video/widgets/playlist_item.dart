import 'package:flutter/material.dart';

class PlaylistItem extends StatelessWidget {

  final String cover;
  final String title;
  final String channelName;
  final String views;
  final String uploadDate;

  PlaylistItem({
    this.title,
    this.cover,
    this.channelName,
    this.views,
    this.uploadDate,
  });

  Widget _subtitleText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 13
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/images/$cover',
            width: 140,
            height: 80,
            fit: BoxFit.fill,
            //height: 24,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  )
                ),
                SizedBox(height: 5),
                _subtitleText(channelName),
                Row(
                  children: <Widget>[
                    _subtitleText(uploadDate),
                    _subtitleText(' - '),
                    _subtitleText('$views views'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}