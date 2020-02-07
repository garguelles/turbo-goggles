import 'package:flutter/material.dart';

class PlaylistItem extends StatelessWidget {
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
            'assets/images/deftones.jpg',
            width: 160,
            //height: 24,
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Deftones - My own summer',
              ),
              Text('channel name'),
              Row(
                children: <Widget>[
                  Text('4 days ago'),
                  Text('-'),
                  Text('118k views'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}