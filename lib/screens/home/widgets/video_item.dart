import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoItem extends StatelessWidget {
  final String cover;
  final String title;
  final String channelName;
  final String views;
  final String uploadDate;

  VideoItem({
    this.title,
    this.channelName,
    this.views,
    this.uploadDate,
    this.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/images/$cover',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          _buildInfo(),
        ],
      ),
    );
  }

  Widget _buildInfo() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              FontAwesomeIcons.userCircle,
              size: 38,
            ),
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(this.channelName),
                      Text(' - ', style: TextStyle(fontSize: 8)),
                      Text('$views views'),
                      Text(' - ', style: TextStyle(fontSize: 8)),
                      Text(this.uploadDate)
                    ],
                  )
                ],
              )
          )
        ],
      ),
    );

  }
}