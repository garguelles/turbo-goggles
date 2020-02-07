import 'package:flutter/material.dart';


class ActionButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18, right: 18, left: 18),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ActionButton(icon: Icons.thumb_up, text: '1.3k'),
          ActionButton(icon: Icons.thumb_down, text: '44'),
          ActionButton(icon: Icons.share, text: 'Share'),
          ActionButton(icon: Icons.file_download, text: 'Download'),
          ActionButton(icon: Icons.save, text: 'Save'),
        ],
      )
    );
  }
}


class ActionButton extends StatelessWidget {
  final IconData icon;
  final String text;

  ActionButton({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.grey[600]),
        SizedBox(height: 7),
        Text(
          text,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey[500],
            fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}