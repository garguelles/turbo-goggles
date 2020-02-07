import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChannelInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _channelDetail = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.userCircle,
          size: 29,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'ThursdayVEVO',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '390k subscribers',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    );

    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.grey),
          bottom: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _channelDetail,
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'SUBSCRIBE',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}