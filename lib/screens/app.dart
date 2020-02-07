import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainContainer extends StatelessWidget {
  final Widget widget;

  MainContainer({ this.widget });

  Widget _buildTitle() {
    return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            FontAwesomeIcons.youtube,
            color: Colors.purple,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              'NotYouTube',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                letterSpacing: -1,
              ),
            ),
          ),
        ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: _buildTitle(),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.black87)
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(FontAwesomeIcons.userCircle),
          ),
        ],
      ),
      body: this.widget,
    );
  }
}
